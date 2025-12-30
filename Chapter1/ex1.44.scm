(define (smooth f)
    (define (avg3 x y z)
        (/ (+ x y z) 3))
    (define (smooth-f x)
        (avg3
            (f (- x dx))
            (f x)
            (f (+ x dx))))
    smooth-f)

(define (n-fold-smooth f n)
    ((repeated smooth n) f))
