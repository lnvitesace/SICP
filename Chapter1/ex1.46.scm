(define (iterative-improve good-enough? improve)
    (define (try guess)
        (let ((next (improve guess)))
            (if (good-enough? guess)
                next
                (try next))))
    try)

(define (sqrt x)
    (define (improve t)
        (avg t (/ x t)))
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.00001))
    ((iterative-improve good-enough? improve) 1.0))

(define (fixed-point f first-guess)
    (define (good-enough? guess)
        (< (abs (- (f guess) guess)) 0.00001))
    ((iterative-improve good-enough? f) first-guess))
