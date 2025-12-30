(define (d x)
    (if (= (remainder (+ x 1) 3) 0)
        (/ (+ (* 2 x) 2) 3)
        1))

(define (n x) 1.0)

(cont-frac n d k)
