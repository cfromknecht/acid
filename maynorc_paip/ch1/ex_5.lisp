#|
Problem text: Write a function to compute the dot product of two
sequences of numbers, represented as lists. No error checking (i.e.
dimension mismatch) implemented.
|#

(defun dot-product (x y)
  (if (null x) 0
    (+ (* (first x) (first y)) (dot-product (rest x) (rest y)))))

(defun sexy-dot-product (x y) ; from the book
  (apply #'+ (mapcar #'* x y)))
