#!/usr/bin/env python3
import math
import time

import rospy
import numpy as np
import smach
import smach_ros
from sensor_msgs.msg import Image, PointCloud2
from sensor_msgs import point_cloud2
from lasr_vision_msgs.srv import YoloDetection, YoloDetectionRequest
from geometry_msgs.msg import Point, PointStamped, PoseWithCovarianceStamped
import tf2_geometry_msgs

import tf2_ros
import tf_conversions

def get_tiago_pose():

    # get current pose of tiago
    tp = rospy.wait_for_message("/robot_pose", PoseWithCovarianceStamped)

    point = Point(x=tp.pose.pose.position.x, y=tp.pose.pose.position.y, z=tp.pose.pose.position.z)

    point_stamped = PointStamped()
    point_stamped.point = point
    point_stamped.header.frame_id = "base_link"
    point_stamped.header.stamp = rospy.Time(0)

    try:
        tiago_pose = tfb.transform(point_stamped, "map")
        # rospy.loginfo(f"Tiago pose {tiago_pose}")
    except Exception:
        rospy.loginfo("No transformation available")

    return tiago_pose


# for every detection, calc person point and publish coords
def send_detections_to_controller(img: Image):
    global counter
    global mask

    counter = counter + 1

    x = 0
    y = 0

    if counter % 10 == 0:
        # instantiate the service request
        request = YoloDetectionRequest()
        request.image_raw = img # sensor_msgs/Image
        request.dataset = "yolov8n-seg.pt" # YOLOv8 model, auto-downloads
        request.confidence = 0.5 # minimum confidence to include in results
        request.nms = 0.3 # coord_publisher(point.x, point.y)n maximal supression
        # fill in service fields

        # send request
        response = detect_service(request)

        # output detection information to terminal
        # send detected coords to detect topic
        # update TF tree and broadcast transformation message
        if response.detected_objects:
            rospy.loginfo("DETECTION")
            for resp in response.detected_objects:

                mask = resp.xyseg

                rospy.loginfo(f"Found {resp.name}")
                point = get_person_pose(mask) # calc where person is
                print(point)
                final_point = make_point_accessible(point)
                print(final_point)
                x = final_point.x  # - 0.76 works for movement along the x axis
                y = final_point.y
                # coord_publisher(point.x, point.y)
                # coord_publisher(1.45, 0.02) # hard coded test case
                # publish average x and y to coordinates

                # print(coord_publisher(point.x, point.y))

                coord_publisher(x, y) # send point to movement controller
        else:
            rospy.loginfo("NO DETECTION")


def switch_to_idle_state():
    global subscriber_enabled

    if subscriber_enabled:
        # If the subscriber is currently enabled, turn it off
        image_subscriber.unregister()
        subscriber_enabled = False


def switch_to_following_state():
    global subscriber_enabled
    global image_subscriber

    if not subscriber_enabled:
        # If the subscriber is currently disabled, turn it back on
        image_subscriber = rospy.Subscriber('/xtion/rgb/image_raw', Image, send_detections_to_controller)  # start detecting
        subscriber_enabled = True

# publish detected coordinates to 'coordinates' topic
def coord_publisher(x, y):
    # Initialize the ROS node
    # rospy.init_node('coordinate_publisher', anonymous=True)

    # Create a publisher with topic name 'coordinates' and message type 'Point'
    pub = rospy.Publisher('coordinates', Point, queue_size=10)

    # Set the rate at which to publish (in Hz)
    rate = rospy.Rate(1)  # 1 Hz

    # Create a Point message
    point_msg = Point()

    # Set the x and y coordinates
    point_msg.x = x
    point_msg.y = y

    # Publish the Point message
    pub.publish(point_msg)

    # Print the published coordinates
    rospy.loginfo("Published coordinates: x = %.2f, y = %.2f", x, y)

    # Sleep to maintain the desired publishing rate
    rate.sleep()

# calculate the point of the person
def get_person_pose(mask_seg):

    pcl = rospy.wait_for_message('/xtion/depth_registered/points', PointCloud2) # get point cloud
    # print(pcl.header.frame_id) # frame of the point cloud
    depth_data = point_cloud2.read_points(pcl, field_names=("x", "y", "z"), skip_nans=True) # extract x, y, z from points
    depth_array = np.array(list(depth_data))

    total_x = 0.0
    total_y = 0.0
    total_z = 0.0
    num_points = len(mask_seg)
    for point in mask_seg:
        x, y, z = depth_array[point] # for every point in the seg mask inside the pcl, extract x, y, z
        total_x += x
        total_y += y
        total_z += z

    average_x = (total_x / num_points) # - 0.5
    average_y = (total_y / num_points) # + 0.1
    average_z = total_z / num_points

    point = Point(x=average_x, y=average_y, z=average_z)
    point_stamped = PointStamped()
    point_stamped.point = point
    point_stamped.header.frame_id = pcl.header.frame_id
    point_stamped.header.stamp = rospy.Time(0)

    try:
        point_stamped = tfb.transform(point_stamped, "map")
        # rospy.loginfo("Point transformation successful")
    except Exception:
        rospy.loginfo("Transform unavailable")
        pass

    return point_stamped


# move the person point out of the obstruction zone
def make_point_accessible(person):

    # get current pose of tiago
    tiago_pose = get_tiago_pose()

    # move point out of obstruction zone

    distance_x = abs(tiago_pose.point.x - person.point.x)
    distance_y = abs(tiago_pose.point.y - person.point.y)

    # print(f"Tiago x: {tiago_pose.point.x}. y:{tiago_pose.point.y}")
    # print(f"Person x: {person.point.x}. y:{person.point.y}")

    k = 0.55

    new_pose = Point()
    new_pose.x = tiago_pose.point.x + (k * distance_x)
    new_pose.y = tiago_pose.point.y + (k * distance_y)

    return new_pose


# def check_if_reached_person():
#
#     global mask
#
#     tiago_pose = get_tiago_pose()
#
#     person_point = calculate_person_point_and_transform(mask) # need to subscribe first for this to work
#
#     r = 1.2
#
#     x_low = round(person_point.point.x - r, 1)
#     x_high = round(person_point.point.x + r, 1)
#     y_low = round(person_point.point.y - r, 1)
#     y_high = round(person_point.point.y + r, 1)
#
#     tx = round(tiago_pose.point.x, 1)
#     ty = round(tiago_pose.point.y, 1)
#
#     print(f"tx {tx}, ty {ty}")
#
#     x_range = np.arange(x_low, x_high, 0.1)
#     y_range = np.arange(y_low, y_high, 0.1)
#
#     print(x_range)
#     print(y_range)
#
#     print(f"Person {person_point.point.x} {person_point.point.y}, Tiago {tiago_pose.point.x} {tiago_pose.point.y}")
#
#     if tiago_pose.point.y in np.arange(y_low, y_high):
#         print("True y")
#     else:
#         print("False y")
#
#     if (tx in x_range) or (ty in y_range):
#         rospy.loginfo("In range of person")
#         return True
#     else:
#         rospy.loginfo("Not in range of person")
#         return False

def is_tiago_within_range():

    global mask

    tiago_pose = get_tiago_pose()
    person_pose = get_person_pose(mask)

    # Calculate the distance between Tiago's pose and the person's pose
    distance = math.sqrt((tiago_pose.point.x - person_pose.point.x) ** 2 + (tiago_pose.point.y - person_pose.point.y) ** 2)

    radius = 1.0

    # Check if the distance is less than or equal to the radius
    if distance <= radius:
        print("In range")
        return True
    else:
        print("Out of range")
        return False

class MainNode():
    def __init__(self):
        # Initialize your subscriber
        self.image_subscriber = rospy.Subscriber('/xtion/rgb/image_raw', Image, self.send_detections_to_controller)
        self.subscriber_enabled = True  # Flag to track the subscriber state


class Initial(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1'])

    def execute(self, userdata):
        # TODO: voice activation?
        return "outcome1"

class Following(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1', 'outcome2'])

    def execute(self, userdata):
        rospy.loginfo('Executing following state')
        # All follow logic

        if mask:
            print("in here")
            if is_tiago_within_range():
                # stop subscriber
                switch_to_idle_state()
                print("In front of person")
                return 'outcome1'
            else:
                return 'outcome2'
        else:
            return 'outcome2'

class Idle(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['outcome1', 'outcome2'])

    def execute(self, userdata):
        rospy.loginfo('Executing idle state')
        # Go to following state
        if not is_tiago_within_range():
            switch_to_following_state()
            return 'outcome1'
        else:
            return 'outcome2'

# Main function
def start_state_machine():
    # Create a SMACH state machine
    sm = smach.StateMachine(outcomes=['success', 'failure'])

    # Open the container
    with sm:
        # Add states to the container
        smach.StateMachine.add('INITIAL', Initial(), transitions={'outcome1':'FOLLOWING'})
        smach.StateMachine.add('FOLLOWING', Following(), transitions={'outcome1':'IDLE', 'outcome2':'FOLLOWING'})
        smach.StateMachine.add('IDLE', Idle(), transitions={'outcome1':'FOLLOWING', 'outcome2':'IDLE'})

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
    image_subscriber = rospy.Subscriber('/xtion/rgb/image_raw', Image, send_detections_to_controller)  # start detecting
    detect_service = rospy.ServiceProxy('/yolov8/detect', YoloDetection)     # create service proxy
    tfb = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tfb)

    mask = []
    counter = 0
    start_state_machine()
    subscriber_enabled = True

    rospy.spin()