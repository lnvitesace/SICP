(define (nth-root x n)
    (fixed-point
        ((repeated average-damp
            (floor (/ (log n) (log 2))))
            (lambda (y)
                (/ x (expt y (- n 1)))))
    1.0))
