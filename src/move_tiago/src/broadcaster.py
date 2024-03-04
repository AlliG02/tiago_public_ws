#!/usr/bin/env python3

import rospy
import tf2_ros
from geometry_msgs.msg import TransformStamped, Point

def broadcast_transform(p: Point):
    """
    Broadcast a simple transform message from source_frame to target_frame.
    """
    rospy.init_node('transform_broadcaster', anonymous=True)
    tf_broadcaster = tf2_ros.TransformBroadcaster()

    source_frame = "base_link"
    target_frame = "odom"

    try:
        while not rospy.is_shutdown():
            # Create a TransformStamped message
            transform_msg = TransformStamped()
            transform_msg.header.stamp = rospy.Time.now()
            transform_msg.header.frame_id = source_frame
            transform_msg.child_frame_id = target_frame
            transform_msg.transform.translation.x = p.x  # Example translation (1 meter along x-axis)
            transform_msg.transform.translation.y = p.y  # Example translation (no movement along y-axis)
            transform_msg.transform.translation.z = 0.0  # Example translation (no movement along z-axis)
            transform_msg.transform.rotation.w = 1.0  # Example rotation (no rotation)

            # Broadcast the transform message
            tf_broadcaster.sendTransform(transform_msg)

            rospy.loginfo("broadcasting transformation")

            rospy.sleep(1.0)  # Sleep for 1 second
    except rospy.ROSInterruptException:
        rospy.loginfo("ROS node interrupted.")

if __name__ == '__main__':
    try:
        coords_subscriber = rospy.Subscriber('coordinates', Point, broadcast_transform)
    except rospy.ROSInterruptException:
        pass
