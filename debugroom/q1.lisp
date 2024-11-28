(defun merge-sorted-lists (a b comp &optional (acc '()))
  (cond
    ((and (null a) (null b)) (reverse acc))
    ((null a) (merge-sorted-lists a (cdr b) comp (cons (car b) acc)))
    ((null b) (merge-sorted-lists (cdr a) comp (cons (car a) acc)))
    ((funcall comp (car a) (car b)) (merge-sorted-lists (cdr a) b comp (cons (car a) acc)))
    (t (merge-sorted-lists a (cdr b) comp (cons (car b) acc)))))
