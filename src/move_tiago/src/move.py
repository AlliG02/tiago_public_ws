#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Pose, Point
from tiago_controllers import BaseController

def callback(point):

    # tiago cannot go to coord in obstacle area

    b = BaseController()

    dest = Pose()
    # dest.position.x = 0.5673575401306152
    # dest.position.y = -0.00901080713739015
    # dest.position.z = 0.0
    # dest.orientation.w = 1.0  # Assuming no rotation

    # we take our transformed x and ys, put them into a pose and send to base controller
    dest.position.x = point.x
    dest.position.y = point.y
    dest.position.z = 0.0
    dest.orientation.w = 1.0  # Assuming no rotation

    b.sync_to_pose(dest)


if __name__ == "__main__":
    rospy.init_node("move")
    coord_sub = rospy.Subscriber("coordinates", Point, callback)
    rospy.spin()