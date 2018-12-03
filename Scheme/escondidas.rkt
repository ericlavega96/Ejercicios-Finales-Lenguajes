;11 A las escondidas

(#%require (only racket/base current-inexact-milliseconds))

(define (buscador x l)
  (cond
    ((null? l) #f)
    ((eq? (car l) x) #t)
    (else (buscador x (cdr l)))
    ))


(define (escondedor x l)
  (cond
    ((null? l) '())
    ((= (car l) x) (cons (string->symbol (string-append "*" (number->string x))) (escondedor x (cdr l))))
    (else (cons (car l) (escondedor x (cdr l))))
    ))

(define t0 (current-inexact-milliseconds))
(escondedor 4 '(1 2 3 4 5))
(buscador 4 (escondedor 4 '(1 2 3 4 5)))
(define t1 (current-inexact-milliseconds))

(- t1 t0)