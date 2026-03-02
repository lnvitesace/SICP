(define (first-denomination x)
    (car x))

(define (except-first-denomination x)
    (cdr x))

(define (no-more? x)
    (null? x))
