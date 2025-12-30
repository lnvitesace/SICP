; We mantain an invariant 'a*b + c', with c equals 0 at the beginning.
(define (mul-iter a b)
    (define (helper a b c)
        (cond (( = b 0) c)
              ((even? b) (helper (double a) (halve b) c))
              (else (helper a (- b 1) (+ a c)))))
    (helper a b 0))
