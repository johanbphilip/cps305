; global variables for max capacity of a building
(defparameter *max1* 0)
(defparameter *max2* 0)

; global variables for current capacity of a building
(defparameter *current1* 0)
(defparameter *current2* 0)


(defun max-capacity (b n)
  (cond
    ((= b 1) (setf *max1* n) (setf *current1* 0) *max1*)
    ((= b 2) (setf *max2* n) (setf *current2* 0) *max2*)))

(defun enter-garage (b)
   (cond
     ((= b 1) (when (< *current1* *max1*) (incf *current1*)) (- *max1* *current1*))
     ((= b 2) (when (< *current2* *max2*) (incf *current2*)) (- *max2* *current2*))))

(defun exit-garage (b)
  (cond
    ((= b 1) (when (> *current1* 0) (decf *current1*)) (- *max1* *current1*))
    ((= b 2) (when (> *current2* 0) (decf *current2*)) (- *max2* *current2*))))
