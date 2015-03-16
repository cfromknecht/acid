(load "fib.lisp")

;; Fibonacci number to compute
(defconstant *fib-difficulty* 42)

;; displays current real and run timestamps
(defun clock ()
  (format t "~%[CLOCK] real: ~D run: ~D~%~%" (get-internal-real-time)
                                             (get-internal-run-time)))

;; calculates the n'th Fibonacci number and prints the result
(defun print-fib2 (n)
  (format t ">   (fib2 ~D)~%    ~D~%" n (fib2 n)))

;; test Fibonacci performance
(defun main ()
  (progn
    (clock)
    (format t ">   (fib ~D)~%    ~D~%" *fib-difficulty* (fib *fib-difficulty*))
    (clock)
    (print-fib2 *fib-difficulty*)
    (clock)
    (print-fib2 100)
    (clock)
    (print-fib2 1000)
    (clock)))

