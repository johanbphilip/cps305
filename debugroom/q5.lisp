(defun print-squares-of-3s (y)
  (do ((i 1 (* 3 i)))
      ((> (* i i) y) i)
    (print (* i i))))
