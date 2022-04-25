(define (cddr s)
  (cdr (cdr s)))

(define (cadr s)
  'YOUR-CODE-HERE
  (car (cdr s))
)

(define (caddr s)
  'YOUR-CODE-HERE
  (car (cdr (cdr s)))
)


(define (sign num)
  'YOUR-CODE-HERE
  (cond ((< num 0) -1)
        ((= num 0) 0)
        ((> num 0) 1)
        )
)


(define (square x) (* x x))

(define (pow x y)
  'YOUR-CODE-HERE
  (if (= y 1) x
      (if (even? y) (square (pow x (/ y 2)))
        (if (odd? y) (* x (square (pow x (/ (- y 1) 2))))))
))


(define (unique s)
  'YOUR-CODE-HERE
  (if (null? s) nil 
     (cons (car s) (unique (filter (lambda (x) (not (equal? x (car s)))) (cdr s)))))
)


(define (replicate x n)
  'YOUR-CODE-HERE
  (define (helper x n lst_sf) 
      (if (= n 0)
         lst_sf
         (helper x (- n 1) (append lst_sf (list x)))))
    (helper x n nil)
)


(define (accumulate combiner start n term)
  'YOUR-CODE-HERE
  (if (= n 0)
     start
     (combiner (accumulate combiner start (- n 1) term)
               (term n))
)
)


(define (accumulate-tail combiner start n term)
  'YOUR-CODE-HERE
  (define (helper combiner start n term value_sf)
      (if (= n 0)
          value_sf
          (helper combiner start (- n 1) term (combiner (term n) value_sf)) 
        )
    )
    (helper combiner start n term start)
)


(define-macro (list-of map-expr for var in lst if filter-expr)
  'YOUR-CODE-HERE
 `(map (lambda (,var) ,map-expr) (filter (lambda (,var) ,filter-expr) ,lst))
)

