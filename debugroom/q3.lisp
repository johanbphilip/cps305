(defun flatten-list-helper (lst)
  (reverse (flatten-list lst)))


(defun flatten-list (lst &optional (acc '()))
  (cond
    ((null lst) acc)
    ((not (typep (car lst) 'list)) (flatten-list (cdr lst) (cons (car lst) acc)))
    (t (flatten-list (cdr lst) (flatten-list (car lst) acc)))))
