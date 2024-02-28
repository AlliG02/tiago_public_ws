#!/usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist

def simple_publisher():
    # Initialize the ROS node
    rospy.init_node('tiago_simple_publisher_forward', anonymous=True)

    # Create a publisher for the cmd_vel topic
    pub = rospy.Publisher('mobile_base_controller/cmd_vel', Twist, queue_size=10)

    # Set the publishing rate
    rate = rospy.Rate(10)  # 10 Hz

    # Create a Twist message
    twist_msg = Twist()
    twist_msg.linear.x = 4.0  # Linear velocity in the x-axis (m/s)
    twist_msg.angular.z = 1.0  # Angular velocity in the z-axis (rad/s)

    while not rospy.is_shutdown():
        # Publish the Twist message
        pub.publish(twist_msg)

        # Sleep to meet the specified publishing rate
        rate.sleep()

if __name__ == '__main__':
    try:
        simple_publisher()
    except rospy.ROSInterruptException:
        pass