#|
|マクロの魔法
|
|C++マクロとはちがう
|#

(defun add (a b)
  (let ((x (+ a b)))
    (format t "The sum is ~a" x)
    x))

(defmacro let1 (var val &body body)
  `(let ((,var ,val))
     ,@body))

(defun add2 (a b)
  (let1 x (+ a b)
    (format t "The sum is ~a" x)
  x))

(defun my-length (lst)
 (labels ((f (lst acc)
           (if lst
            (f (cdr lst) (1+ acc))
            acc)))
  (f lst 0)))

(princ "done")
