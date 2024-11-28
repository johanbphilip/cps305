
(defun square (x) ; defines a function that squares the number
  (* x x))


(defun p1 (x y)   ; test functions to show the error of passing less arguements than needed
    (+ (p2 x y)
       (p3 x y)))

(defun p2 (z w)
    (* z w))

(defun p3 (a b)
    (+ (p2 a)
       (p2 b)))
