;7 Fibonacci Recursivo
(#%require (only racket/base current-inexact-milliseconds))

(define (fib n)
  (if (<= n 1)
      n
      (+ (fib (- n 1)) (fib (- n 2))))
  )


(define t0 (current-inexact-milliseconds))
(fib 5)
(define t1 (current-inexact-milliseconds))

(- t1 t0)