;; Auto-generated. Do not edit!


(when (boundp 'arduinobot_test::FibonacciFeedback)
  (if (not (find-package "ARDUINOBOT_TEST"))
    (make-package "ARDUINOBOT_TEST"))
  (shadow 'FibonacciFeedback (find-package "ARDUINOBOT_TEST")))
(unless (find-package "ARDUINOBOT_TEST::FIBONACCIFEEDBACK")
  (make-package "ARDUINOBOT_TEST::FIBONACCIFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude FibonacciFeedback.msg.html


(defclass arduinobot_test::FibonacciFeedback
  :super ros::object
  :slots (_sequence ))

(defmethod arduinobot_test::FibonacciFeedback
  (:init
   (&key
    ((:sequence __sequence) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _sequence __sequence)
   self)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:serialization-length
   ()
   (+
    ;; int32[] _sequence
    (* 4    (length _sequence)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _sequence
     (write-long (length _sequence) s)
     (dotimes (i (length _sequence))
       (write-long (elt _sequence i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _sequence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sequence (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _sequence i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get arduinobot_test::FibonacciFeedback :md5sum-) "b81e37d2a31925a0e8ae261a8699cb79")
(setf (get arduinobot_test::FibonacciFeedback :datatype-) "arduinobot_test/FibonacciFeedback")
(setf (get arduinobot_test::FibonacciFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback
int32[] sequence

")



(provide :arduinobot_test/FibonacciFeedback "b81e37d2a31925a0e8ae261a8699cb79")


