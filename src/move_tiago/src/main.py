#!/usr/bin/env python3
import rospy
import smach
import smach_ros

from detect import Detect

class Initial(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['start'])

    def execute(self, userdata):
        # TODO: voice activation?
        return "start" # go following

class Following(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['reached_person', 'not_reached_person', 'lost_person'])

    def execute(self, userdata):
        rospy.loginfo('Executing following state')
        # All follow logic

        d.detect()

        if d.mask: # only progress if we detect something
            if d.is_tiago_within_range():
                print("In front of person")
                return 'reached_person' # go idle
            else:
                return 'not_reached_person' # stay following
        else:
            return 'not_reached_person' # stay following

        if not found:
            return 'lost_person'

class Idle(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['person_moved', 'person_still'])

    def execute(self, userdata):
        rospy.loginfo('Executing idle state')
        # Go to following state
        if not d.is_tiago_within_range():
            return 'person_moved' # go following
        else:
            print("Staying Idle")
            return 'person_still' # stay idle

class Searching(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['found_person', 'searching'])

    def execute(self, userdata):
        # perform search behaviour
        if d.found:
            return 'found_person'
        else:
            return 'searching'

# Main function
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
    start_state_machine()
    rospy.spin()