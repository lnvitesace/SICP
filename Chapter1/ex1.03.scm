(define (f a b c)
    (cond ((and (< a b) (< a c)) (square-sum b c))
          ((and (< b a) (< b c)) (square-sum a c))
          (else (square-sum a b))))
