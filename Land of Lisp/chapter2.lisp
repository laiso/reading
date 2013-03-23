(defparameter *small* 1)
(defparameter *big* 100)

(defun guess-my-number ()
  (ash (+ *small* *big*) -1))

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(flet ((f (n)
         (+ n 10))
       (g (n)
         (- n 3)))
  (print (g (f 5))))

(labels ((f (n)
         (+ n 10))
       (g (n)
         (- n 3)))
  (print (g (f 5))))

