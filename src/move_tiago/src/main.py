#!/usr/bin/env python3
import rospy
import smach
import smach_ros

import threading

from detect import Detect
from move import Move

class Initial(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['start'])

    def execute(self, userdata):
        # go following
        return "start"

class Following(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['reached_person', 'not_reached_person', 'lost_person'])

    def execute(self, userdata):
        rospy.loginfo('Executing following state')
        # All follow logic

        if not d.found:
            return 'lost_person'

        coords = d.detect()
        # print(f"These are the coords {coords}")

        # should we follow or search?
        if coords:
            m.move_to_person(coords)

        # should we go idle?
        if d.mask:
            if d.is_tiago_within_range():
                print("In front of person")
                # go idle
                return 'reached_person'
            else:
                # stay following
                return 'not_reached_person'

        else:
            # stay following
            return 'not_reached_person'


class Idle(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['person_moved', 'person_still'])

    def execute(self, userdata):
        rospy.loginfo('Executing idle state')
        # Go to following state
        if not d.is_tiago_within_range():
            # go following
            return 'person_moved'
        else:
            print("Staying Idle")
            # stay idle
            return 'person_still'

class Searching(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['found_person', 'searching'])

    def execute(self, userdata):
        # perform search behaviour
        for _ in range(5):
            if d.detect():
                return 'found_person'

        m.recovery_scan()
        return 'searching'

# Start state machine
def start_state_machine():
    # Create a SMACH state machine
    sm = smach.StateMachine(outcomes=['success', 'failure'])

    # Open the container
    with sm:
        # Add states to the container
        smach.StateMachine.add('INITIAL', Initial(), transitions={'start':'FOLLOWING'})
        smach.StateMachine.add('FOLLOWING', Following(), transitions={'reached_person':'IDLE', 'not_reached_person':'FOLLOWING', 'lost_person':'SEARCHING'})
        smach.StateMachine.add('IDLE', Idle(), transitions={'person_moved':'FOLLOWING', 'person_still':'IDLE'})
        smach.StateMachine.add('SEARCHING', Searching(), transitions={'found_person':'FOLLOWING', 'searching':'SEARCHING'})

    # Create and start the introspection server
    sis = smach_ros.IntrospectionServer('server_name', sm, '/SM_ROOT')
    sis.start()

    # Execute the state machine
    outcome = sm.execute()

    # Wait for ctrl-c to stop the application
    rospy.spin()
    sis.stop()

if __name__ == '__main__':

    rospy.init_node('main_node')
    d = Detect()
    m = Move()
    start_state_machine()
    rospy.spin()