(defstruct movie
  title director year type)

(defun in-array (title a)
  (dotimes (i (length a))
    (when (and (typep (aref a i) 'movie)
               (equal (movie-title (aref a i)) title))
      (return i))))

(defun add-movie (m a)
    (unless (in-array (movie-title m) a)
      (dotimes (i (length a))
        (when (null (aref a i))
          (setf (aref a i) m)
          (return a)))))

(defun delete-movie (title a)
  (let ((index (in-array title a)))
    (if index
        (progn
          (setf (aref a index) nil)
           a))))

(defun num-movies (a)
  (do ((i 0 (1+ i))
       (acc 0))
      ((= i (length a)) acc)
    (if (typep (aref a i) 'movie)
        (incf acc))))
    
        
      

