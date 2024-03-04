#!/usr/bin/env python3

import rospy
import tf2_ros
from tiago_controllers import BaseController
from geometry_msgs.msg import Point, PointStamped, Quaternion

def callback(p: Point):

    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)

    pose_person = PointStamped()
    pose_person.header.frame_id = "base_link"
    pose_person.point.x = p.x
    pose_person.point.y = p.y
    pose_person.point.z = 0.0

    try:

        # # Transform the pose point from "base_link" to "odom" frame
        # transformed_pose_odom = tf_buffer.transform(pose_person, "odom", rospy.Time(0))

        # Extract transformed coordinates
        # transformed_x = transformed_pose_odom.point.x
        # transformed_y = transformed_pose_odom.point.y

        # pose_person_transformed = PointStamped()
        # pose_person_transformed.header = "odom"
        # pose_person_transformed.point.x = transformed_x
        # pose_person_transformed.point.y = transformed_y
        # pose_person_transformed.point.z = 0.0

        # Proceed with your navigation logic using transformed coordinates

        # Placeholder for your navigation logic...

        # rospy.loginfo("Transformed pose (x, y) in world frame (odom): (%f, %f)" % (transformed_x, transformed_y))

        rospy.loginfo("we in here")

        # Placeholder for the rest of your navigation logic...

        return True  # Return success
    except Exception as e:
        rospy.logerr("Failed to transform pose: %s" % str(e))
        return False  # Return failure

    b = BaseController()
    b.sync_to_pose(pose_person_transformed)


if __name__ == "__main__":
    rospy.init_node('move_to_coords_node')
    coords_subscriber = rospy.Subscriber('coordinates', Point, callback)
    rospy.spin()