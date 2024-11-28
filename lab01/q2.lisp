(defun fact (n)
  (if (<= n 1)
      1
      (* n (fact (- n 1))))) 
; if you want to have multiple things happen during a then-expression, we use
; progn, it serves as {} in java or JS.
