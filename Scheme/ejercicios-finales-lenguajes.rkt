;7 10 11 12


;7 Fibonacci Recursivo
(define (fib n)
  (if (<= n 1)
      n
      (+ (fib (- n 1)) (fib (- n 2))))
  )


(fib 5)


;10 Quitar Duplicados

(define (filtro l f)
  (if (null? l)
      '()
      (if (f (car l))
          (cons (car l) (filtro (cdr l) f))
          (filtro (cdr l) f))))


;Opcion alternativa, que no modifica el orden de la lista
(define (eliminar-rep l)
  (if (null? l)
      '()
      (cons (car l) (eliminar-rep (filtro l (lambda (x) (not (equal? (car l) x))))))))


(define (dupl l)
  (if (null? l)
      '()
      (if (not(member (car l) (cdr l)))
          (cons (car l) (dupl (cdr l)))
          (dupl (cdr l))))
  )


;La funcion transforma la salida segun el tipo del valor de entrada
(define (quitar-dupl l)
  (cond
    ((list? l) (dupl l))
    ((string? l) (list->string (dupl (string->list l))))
    ((symbol? l) (string->symbol (list->string (dupl (string->list (symbol->string l))))))
    )
  )

(quitar-dupl '(a b c a e d e b))
(quitar-dupl 'abc)
(quitar-dupl "aaaabaaa")



;11 A las escondidas
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


(escondedor 4 '(1 2 3 4 5))
(buscador 4 (escondedor 4 '(1 2 3 4 5)))


;12 Contar cruces del cero

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


(cuenta-cruces-cero (signo-list '(3 1 2 0 0 -4 0 -2)))

