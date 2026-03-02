(define (cons a b)
    (* (expt 2 a) (expt 3 b))

; If we know b, then we can easily resume a
(define (car c)
    (let ((b (cdr c)))
         (/ (log (/ c (expt 3 b))) (log 2))))

; If a=0, then c = 3^b, b is log_3 c
; Otherwise, c = 2^a * 3^b is even, we divide it by 2 unitl it become odd, the result is then 3^b
(define (cdr c)
    (if (odd? c)
        (/ (log c) (log 3))
        (cdr (/ c 2))))
