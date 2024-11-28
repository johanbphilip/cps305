(defstruct book
  title author genre pages)

(defun max-books-pages (arr)
 (let ((max nil) (max-book nil))
   (dotimes (i (length arr) max-book)
     (when (> (book-pages (aref arr i)) max)
       (setf max (book-pages (aref arr i)))
       (setf max-book (aref arr i))))))

(defun last-books-author (arr)
  (let ((max "") (max-book nil))
    (dotimes (i (length arr) max-book)
      (when (string>= (book-title (aref arr i)) max)
        (setf max (book-title (aref arr i)))
        (setf max-book (aref arr i))))))

(defun max-books (arr comp)
  (let ((max-book (aref arr 0)))
    (dotimes (i (length arr) max-book)
      (if (not (null (aref arr i)))
          (if (funcall comp max-book (aref arr i))
              (setf max-book (aref arr i)))))))
