(define (make-rat n d)
    (if (> (* n d) 0)
        (cons n d)
        (cons (- (abs n)) (abs d))))
