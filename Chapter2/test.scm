(define (accumulate op init list)
    (if (null? list) init
        (op (car list) (accumulate op init (cdr list)))))

(define a (list 1 2 3 4 5))

(define (h x list)
    (accumulate (lambda (this higher) (+ this (* x higher))) 0 list))

(define (count-leaves t)
    (accumulate + 0 (map (lambda (b) (if (pair? b) (count-leaves b) 1)) t)))

(print (count-leaves (list (list 1 2) (list 3 4))))