(define (good-enough guess x) (< (abs (/ (- guess x) x)) 0.0001))
