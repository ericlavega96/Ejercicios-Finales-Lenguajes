;12 Contar cruces del cero

(#%require (only racket/base current-inexact-milliseconds))

(define (cuenta-cruces-cero l)
  (cond
    ((null? l) 0)
    ((= (length l) 1) 0)
    ((= (car l) (cadr l)) (cuenta-cruces-cero (cdr l)))
    (else (+ 1 (cuenta-cruces-cero (cdr l))))
    ))


(define (signo-list l)
  (cond
    ((null? l) '())
    ((> (car l) 0) (cons (- (car l) (- (car l) 1)) (signo-list (cdr l))))
    ((< (car l) 0) (cons (- (car l) (+ (car l) 1)) (signo-list (cdr l))))
    (else (signo-list (cdr l)))
  )
  )

(define t0 (current-inexact-milliseconds))
(cuenta-cruces-cero (signo-list '(3 1 2 0 0 -4 0 -2)))
(define t1 (current-inexact-milliseconds))

(- t1 t0)