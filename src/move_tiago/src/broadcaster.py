#!/usr/bin/env python3
# add tf2 geom msgs
import rospy
import tf2_ros
from geometry_msgs.msg import TransformStamped, Point, Pose
from tiago_controllers import BaseController

# broadcast transformation from point cloud to map
def broadcast_transform(p: Point):
    """
    Broadcast a simple transform message from source_frame to target_frame.
    """
    tf_broadcaster = tf2_ros.TransformBroadcaster()

    source_frame = "xtion_rgb_optical_frame"
    target_frame = "map"

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

            rospy.loginfo(f'broadcasting transformation of {p.x}, {p.y}')

            rospy.sleep(1.0)  # Sleep for 1 second
    except rospy.ROSInterruptException:
        rospy.loginfo("ROS node interrupted.")

if __name__ == '__main__':

    rospy.init_node('transform_broadcaster', anonymous=True)
    # start broadcasting transformations
    coords_subscriber = rospy.Subscriber('coordinates', Point, broadcast_transform)
    tf_coords_publisher = rospy.Publisher('tfs', Point, queue_size=10)

    tf_buffer = tf2_ros.Buffer()
    tf_listener = tf2_ros.TransformListener(tf_buffer)

    # listen for transformations
    # publish transformations to tfs for move node
    while not rospy.is_shutdown():
        if tf_buffer.can_transform('xtion_rgb_optical_frame', 'map', rospy.Time(0)):
            print("Transform available")
            transformation = tf_buffer.lookup_transform('xtion_rgb_optical_frame', 'map', rospy.Time(0))

            pose = Pose()
            pose.position.x = transformation.transform.translation.x
            pose.position.y = transformation.transform.translation.y

            print(pose.position.x)
            print(pose.position.y)

            point_msg = Point()

            point_msg.x = pose.position.x
            point_msg.y = pose.position.y

            tf_coords_publisher.publish(point_msg)

        else:
            print('No transform') # takes a second for transformation to become available
