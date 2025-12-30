; Recursive version
(define (product term a next b)
    (if (> a b)
        1)
        (* (term a) (product term (next a) next b)))

; Iterative version
(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))))
    (iter a 1))

; Factorial
(define (factorial n)
    (product identity 1 inc n))

; pi-prod
(define (pi-prod n)
    (define (f x)
        (if (odd? x)
            (/ (+ x 1) (+ x 2))
            (/ (+ x 2) (+ x 1)))
    (product f 1 inc n)))

