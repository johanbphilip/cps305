(defstruct course
  name code)

(defun set-course-name (c name)
  (setf (course-name c) name)
  c)
