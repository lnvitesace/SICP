(define (ex b n)
    (define (helper b n a)
        (cond ((= n 0) a)
              ((even? n) (helper (* b b) (/ n 2) a))
              (else (helper b (- n 1) (* a b)))))
    (helper b n 1))

