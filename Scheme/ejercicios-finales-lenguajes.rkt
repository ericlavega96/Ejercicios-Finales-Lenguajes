;7 10 11 12


;7 Fibonacci Recursivo
(define (fib n)
  (if (<= n 1)
      1
      (+ (fib (- n 1)) (fib (- n 2))))
  )


;10 Quitar Duplicados

(define (filtro l f)
  (if (null? l)
      '()
      (if (f (car l))
          (cons (car l) (filtro (cdr l) f))
          (filtro (cdr l) f))))

(define (eliminar-rep l)
  (if (null? l)
      '()
      (cons (car l) (eliminar-rep (filtro l (lambda (x) (not (equal? (car l) x))))))))


;11 A las escondidas
(define (buscador x l)
  (cond
    ((null? l) #f)
    ((= (car l) x) #t)
    (else (buscador x (cdr l)))
    ))


(define (escondedor x l)
  (cond
    ((null? l) '())
    ((= (car l) x) (cons (cons '* (car l)) (escondedor x (cdr l))))
    (else (cons (car l) (escondedor x (cdr l))))
    ))







;12 Contar cruces del cero

;(define (cuenta-cruces-cero l)
;  (if (not(= (car l) 0))
;      (if (not (= (cadr l) 0))
;          (+ 1 (cuenta-cruces-cero)))))




;(define (cuenta-cruces-cero l)
;  (if null? l)
;  0
;  (if (not (= (car l) 0))
;      (if (not (= (cadr l) 0))
;          (+ 1 (cuenta-cruces-cero (cddr l)))
;          (cuenta-cruces-cero (cddr l))))
;  )






