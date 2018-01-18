;; Auto-generated. Do not edit!


(when (boundp 'vicon::SetPose)
  (if (not (find-package "VICON"))
    (make-package "VICON"))
  (shadow 'SetPose (find-package "VICON")))
(unless (find-package "VICON::SETPOSE")
  (make-package "VICON::SETPOSE"))
(unless (find-package "VICON::SETPOSEREQUEST")
  (make-package "VICON::SETPOSEREQUEST"))
(unless (find-package "VICON::SETPOSERESPONSE")
  (make-package "VICON::SETPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass vicon::SetPoseRequest
  :super ros::object
  :slots (_subject_name _pose ))

(defmethod vicon::SetPoseRequest
  (:init
   (&key
    ((:subject_name __subject_name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _subject_name (string __subject_name))
   (setq _pose __pose)
   self)
  (:subject_name
   (&optional __subject_name)
   (if __subject_name (setq _subject_name __subject_name)) _subject_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _subject_name
    4 (length _subject_name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _subject_name
       (write-long (length _subject_name) s) (princ _subject_name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _subject_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _subject_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass vicon::SetPoseResponse
  :super ros::object
  :slots ())

(defmethod vicon::SetPoseResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass vicon::SetPose
  :super ros::object
  :slots ())

(setf (get vicon::SetPose :md5sum-) "9073f079ef6a99118cd85a569b78a1cb")
(setf (get vicon::SetPose :datatype-) "vicon/SetPose")
(setf (get vicon::SetPose :request) vicon::SetPoseRequest)
(setf (get vicon::SetPose :response) vicon::SetPoseResponse)

(defmethod vicon::SetPoseRequest
  (:response () (instance vicon::SetPoseResponse :init)))

(setf (get vicon::SetPoseRequest :md5sum-) "9073f079ef6a99118cd85a569b78a1cb")
(setf (get vicon::SetPoseRequest :datatype-) "vicon/SetPoseRequest")
(setf (get vicon::SetPoseRequest :definition-)
      "string subject_name
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---


")

(setf (get vicon::SetPoseResponse :md5sum-) "9073f079ef6a99118cd85a569b78a1cb")
(setf (get vicon::SetPoseResponse :datatype-) "vicon/SetPoseResponse")
(setf (get vicon::SetPoseResponse :definition-)
      "string subject_name
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---


")



(provide :vicon/SetPose "9073f079ef6a99118cd85a569b78a1cb")


