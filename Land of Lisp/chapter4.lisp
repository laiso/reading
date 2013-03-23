(if (eq 1 1)
  (progn 
    (print 1)
    (print 2)))

(defvar *arch-enemy* nil)
(defun pudding-eater (person)
  (cond ((eq person 'henry)(setf *arch-enemy* 'stupid-lisp-alien)
            '(curse you lisp elien - you ate my pudding))
        ((eq person 'johnny)(setf *arch-enemy* 'useless-old-johnny))
        ))

(pudding-eater 'henry)

(if (member 11 '(1 2 3 4))
 (print 'one-is-in-the-list)
 (print 'one-is-not-in-the-list)
)

(if (find-if #'oddp '(2 4 5 6))
  'there-is-an-odd-number
  'there-is-no-odd-number
  )

