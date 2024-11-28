(defstruct student
  (level 0 :type integer)
  (grades '() :type list))

(defun count-above (student year threshold)
  (if (not (= (student-level student) year))
      0
      (let ((total 0))
        (dolist (i (student-grades student) total)
          (when (>= i threshold)
            (setf total (1+ total)))))))

(defun students-above (arr level threshold)
  (let ((total 0))
    (dotimes (i (length arr) total)
      (let ((current-grades (count-above (aref arr i) level threshold)))
        (setf total (+ total current-grades))))))
            
