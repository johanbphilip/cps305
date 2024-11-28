(defun discount-calculator (original)
  (let ((result "Invalid Price"))
    (cond
      ((<= original 0) (setf result "Invalid Price"))
      ((< original 20) (setf result (* original 0.95)))
      ((and (>= original 20) (<= original 100)) (setf result (* original 0.90)))
      ((> original 100) (setf result (* original 0.85))))))
