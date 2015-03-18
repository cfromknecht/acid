#|
Problem text: Write a function that counts the number of atoms in an
expression [note: we will not count 'nil' as an atom]
|#

(defun count-atoms (x)
  (cond ((null x) 0)
    ((atom x) 1) 
    (t (+ (count-atoms (first x))
      (count-atoms (rest x))))))
