
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Helper methods
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun range (max &key (min 0) (step 1))
  (loop for n from min below max by step
    collect n))

(defun fold-left (func acc ls)
  (if (cdr ls)
    (fold-left func 
               (funcall func (car ls) acc) 
               (cdr ls))
    acc))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Recursive Fibonacci
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bread and butter
(defun fib (x)
  (if (> x 1)
    (+ (fib (- x 1)) (fib (- x 2)))
    1))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Fold Fibonacci
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; sum previous state to make new head, move previous head to tail
;; (Fn-1, Fn-2) -> (Fn-1 + Fn-2, Fn-1) = (Fn, Fn-1)
(defun nextFibState (i acc)
  (list (apply '+ acc) (car acc)))

;; updates FibState x times and returns most recently calculated Fib number
(defun fib2 (x)
  (car (fold-left 'nextFibState
                  (list 1 1) 
                  (range x)))) 

