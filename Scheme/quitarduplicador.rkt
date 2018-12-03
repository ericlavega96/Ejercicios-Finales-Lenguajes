;10 Quitar Duplicados

(#%require (only racket/base current-inexact-milliseconds))

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

(define t0 (current-inexact-milliseconds))
(quitar-dupl 'abcaedeb)
(define t1 (current-inexact-milliseconds))

(- t1 t0)