#|
Problem text: Write a function to exponentiate, or raise a number
to an integer power.
|#

(defun power (x y)
  (if (= y 0) 1
    (* x (power x (- y 1)))))
