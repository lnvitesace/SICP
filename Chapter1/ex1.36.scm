(define (fixed-point-p f first-guess)
    (define (close-enough? v1 v2)
        (< (abs (- v1 v2)) tolerance))
    (define (try guess)
        (let ((next (f guess)))
            (newline)
            (display guess)
            (if (close-enough? guess next)
                next
                (try next))))
    (try first-guess))

; Without average damping
(fixed-point-p (lambda (x) (/ (log 1000) (log x))))

; With average damping
(fixed-point-p (lambda (x) (average x (/ (log 1000) (log x)))))

; The number of step with average damping is much less than without average damping
