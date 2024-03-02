#!/usr/bin/env python3

import rospy
from tiago_controllers import BaseController
from geometry_msgs.msg import PoseWithCovarianceStamped, Pose, Point, Quaternion

def callback(p: Point):
    b = BaseController()
    pose = Pose()

    x = p.x
    y = p.y

    # Set the position
    pose.position = Point(x, y, 0.0)
    # Set the orientation (assuming no rotation, i.e., identity quaternion)
    pose.orientation = Quaternion(x=0.0, y=0.0, z=0.0, w=1.0)

    b.sync_to_pose(pose)

coords_subscriber = rospy.Subscriber('coordinates', Point, callback)

if __name__ == "__main__":
    rospy.init_node('move_to_coords_node')
    rospy.spin()