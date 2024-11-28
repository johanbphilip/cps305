(defun sum-deep-list (lst &optional (acc 0))
  (cond
    ((null lst) acc)
    ((typep (car lst) 'integer) (sum-deep-list (cdr lst) (+ (car lst) acc)))
    (t (sum-deep-list (cdr lst) (+ acc (sum-deep-list (car lst)))))))

(defun sum-deep-list-int (lst &optional (acc 0))
  (cond
    ((null lst) acc)
    ((typep (car lst) 'integer) (sum-deep-list-int (cdr lst) (+ (car lst) acc)))
    ((not (typep (car lst) 'list)) (sum-deep-list-int (cdr lst) acc))
    (t (sum-deep-list-int (cdr lst) (+ acc (sum-deep-list-int (car lst)))))))
