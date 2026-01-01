; Recursive version
(define (f n)
    (if (< n 3)
        n
        (+ (f (- n 1))
           (* 2 (f (- n 2)))
           (* 3 (f (- n 3))))))

; Iterative version
(define (f n)
    (define (g a b c count)
        (if (= count n)
            a
            (g (+ a (* 2 b) (* 3 c))
               a
               b
               (+ 1 count))))
    (g 2 1 0 2))
