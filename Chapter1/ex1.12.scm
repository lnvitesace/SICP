(define (pascal x y)
    (if (or (= x y) (= y 0))
        1
        (+ (pascal (- x 1) (- y 1))
           (pascal (- x 1) y))))
