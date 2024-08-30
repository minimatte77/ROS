; Auto-generated. Do not edit!


(cl:in-package arduinobot_remote-msg)


;//! \htmlinclude ArduinobotTaskActionGoal.msg.html

(cl:defclass <ArduinobotTaskActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type arduinobot_remote-msg:ArduinobotTaskGoal
    :initform (cl:make-instance 'arduinobot_remote-msg:ArduinobotTaskGoal)))
)

(cl:defclass ArduinobotTaskActionGoal (<ArduinobotTaskActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArduinobotTaskActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArduinobotTaskActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name arduinobot_remote-msg:<ArduinobotTaskActionGoal> is deprecated: use arduinobot_remote-msg:ArduinobotTaskActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ArduinobotTaskActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduinobot_remote-msg:header-val is deprecated.  Use arduinobot_remote-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <ArduinobotTaskActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduinobot_remote-msg:goal_id-val is deprecated.  Use arduinobot_remote-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <ArduinobotTaskActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader arduinobot_remote-msg:goal-val is deprecated.  Use arduinobot_remote-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArduinobotTaskActionGoal>) ostream)
  "Serializes a message object of type '<ArduinobotTaskActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArduinobotTaskActionGoal>) istream)
  "Deserializes a message object of type '<ArduinobotTaskActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArduinobotTaskActionGoal>)))
  "Returns string type for a message object of type '<ArduinobotTaskActionGoal>"
  "arduinobot_remote/ArduinobotTaskActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArduinobotTaskActionGoal)))
  "Returns string type for a message object of type 'ArduinobotTaskActionGoal"
  "arduinobot_remote/ArduinobotTaskActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArduinobotTaskActionGoal>)))
  "Returns md5sum for a message object of type '<ArduinobotTaskActionGoal>"
  "25dbc7123bf39d0ae8bdb43ed5637e31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArduinobotTaskActionGoal)))
  "Returns md5sum for a message object of type 'ArduinobotTaskActionGoal"
  "25dbc7123bf39d0ae8bdb43ed5637e31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArduinobotTaskActionGoal>)))
  "Returns full string definition for message of type '<ArduinobotTaskActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ArduinobotTaskGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arduinobot_remote/ArduinobotTaskGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int64 task_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArduinobotTaskActionGoal)))
  "Returns full string definition for message of type 'ArduinobotTaskActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%ArduinobotTaskGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: arduinobot_remote/ArduinobotTaskGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%int64 task_number~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArduinobotTaskActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArduinobotTaskActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ArduinobotTaskActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
