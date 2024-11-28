(defun is-palindrome? (lst &optional (revlist (reverse lst)))
  (cond
    ((null lst) t)
    ((not (equal (car lst) (car revlist))) nil)
    (t (is-palindrome? (cdr lst) (cdr revlist)))))
