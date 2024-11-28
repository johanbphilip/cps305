(defvar *balance* 1000)

(defun balance ()
  *balance*)

(defun withdraw (amount)
  (if (> amount 10000)
      (print "Amount exceeds $10000"))
  (if (< amount 0)
      (print "Negative amounts not allowed"))
  (if (> amount *balance*)
      (print "Insufficient balance"))
  (if (and (< amount 10000) (> amount 0))
      (setf *balance* (- *balance* amount)))
  *balance*)
      
  
