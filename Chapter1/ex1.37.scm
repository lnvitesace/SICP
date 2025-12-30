; Recursive version
(define (cont-frac n d k)
    (define (helper t)
        (if (= t k)
            (/ (n t) (d t))
            (/ (n t) (+ (d t) (helper (+ t 1))))))
    (helper 1))

; Iterative version
(define (cont-frac n d k)
    (define (iter t result)
        (if (= t 0)
            result
            (iter (- t 1) (/ (n t) (+ (d t) result)))))
    (iter k 0))
