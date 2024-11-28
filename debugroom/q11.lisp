(defun sum-of-natural-nums (n &optional (acc 0))
  (cond
    ((= n 0) acc)
    ((sum-of-natural-nums (1- n) (+ acc n)))))


(defun factorial (n &optional (acc 1))
  (cond
    ((< n 0) "Invalid input")
    ((= n 0) acc)
    (t (factorial (1- n) (* acc n)))))

(defun factorial-list (lst &optional (acc '()) (accnum 1))
  (dolist (num lst)
    (cond
      ((< num 0) (factorial (cdr lst) (cons "Invalid input" acc) 1))
      ((= num 0) (factorial (cdr lst) (cons accnum acc) 1))
      (t (factorial (cons (1- num) (cdr lst)) acc (* accnum num))))))

(defun max-element (lst &optional (max 0))
  (dolist (num lst max)
    (cond
      ((null lst) max)
      ((> num max) (max-element (cdr lst) (setf max num)))
      (t (max-element (cdr lst) max)))))
