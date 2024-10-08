;; Auto-generated. Do not edit!


(when (boundp 'arduinobot_remote::ArduinobotTaskFeedback)
  (if (not (find-package "ARDUINOBOT_REMOTE"))
    (make-package "ARDUINOBOT_REMOTE"))
  (shadow 'ArduinobotTaskFeedback (find-package "ARDUINOBOT_REMOTE")))
(unless (find-package "ARDUINOBOT_REMOTE::ARDUINOBOTTASKFEEDBACK")
  (make-package "ARDUINOBOT_REMOTE::ARDUINOBOTTASKFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude ArduinobotTaskFeedback.msg.html


(defclass arduinobot_remote::ArduinobotTaskFeedback
  :super ros::object
  :slots (_percentage ))

(defmethod arduinobot_remote::ArduinobotTaskFeedback
  (:init
   (&key
    ((:percentage __percentage) 0)
    )
   (send-super :init)
   (setq _percentage (round __percentage))
   self)
  (:percentage
   (&optional __percentage)
   (if __percentage (setq _percentage __percentage)) _percentage)
  (:serialization-length
   ()
   (+
    ;; int64 _percentage
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _percentage
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _percentage (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _percentage) (= (length (_percentage . bv)) 2)) ;; bignum
              (write-long (ash (elt (_percentage . bv) 0) 0) s)
              (write-long (ash (elt (_percentage . bv) 1) -1) s))
             ((and (class _percentage) (= (length (_percentage . bv)) 1)) ;; big1
              (write-long (elt (_percentage . bv) 0) s)
              (write-long (if (>= _percentage 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _percentage s)(write-long (if (>= _percentage 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _percentage
#+(or :alpha :irix6 :x86_64)
      (setf _percentage (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _percentage (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get arduinobot_remote::ArduinobotTaskFeedback :md5sum-) "face31f38d20abbde445df7aa912bb07")
(setf (get arduinobot_remote::ArduinobotTaskFeedback :datatype-) "arduinobot_remote/ArduinobotTaskFeedback")
(setf (get arduinobot_remote::ArduinobotTaskFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
int64 percentage

")



(provide :arduinobot_remote/ArduinobotTaskFeedback "face31f38d20abbde445df7aa912bb07")


