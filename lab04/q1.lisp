(defstruct record
  name score)

(defun sort-student-records (students comp)
  (if (null students)
      '()
      (let* ((pivot (car students))
             (smaller (remove-if-not (lambda (x) (funcall comp x pivot)) (cdr students)))
             (larger (remove-if (lambda (x) (funcall comp x pivot)) (cdr students))))
        (append (sort-student-records smaller comp)
                (list pivot)
                (sort-student-records larger comp)))))
