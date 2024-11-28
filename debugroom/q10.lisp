(defstruct person
  fname mother father sibling)

(defun redact-names (lst name)
  (dolist (person lst lst)
    (cond
      ((string= (person-fname person) name) (setf (person-fname person) "___"))
      ((string= (person-mother person) name) (setf (person-mother person) "___"))
      ((string= (person-father person) name) (setf (person-father person) "___"))
      ((string= (person-sibling person) name) (setf (person-sibling person) "___")))))
