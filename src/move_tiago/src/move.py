#!/usr/bin/env python3
import rospy
import math
from geometry_msgs.msg import Pose
from tiago_controllers import BaseController
from detect import Detect

class Move:

    def __init__(self):
        self.b = BaseController()
        self.d = Detect()

    def move_to_person(self, coords):
        # tiago cannot go to coord in cost map
        dest = Pose()

        # we take our transformed x and ys, put them into a pose and send to base controller
        dest.position.x = coords[0]
        dest.position.y = coords[1]
        dest.position.z = 0.0
        # Assuming no rotation
        dest.orientation.w = 1.0
        rospy.loginfo(f"Going to {coords[0]}, {coords[1]}")
        self.b.sync_to_pose(dest)

    def recovery_scan(self):

        rotation = math.pi / 4
        rospy.loginfo("Searching")
        self.b.rotate(rotation)
