; one is (add-1 zero)
(define one (lambda (f) (lambda (x) (f x))))

; two is (add-1 one)
(define one (lambda (f) (lambda (x) (f (f x)))))

; first do it n times, then m times
(define add
    (lambda (m)
        (lambda (n)
            (lambda (f)
                (lambda (x)
                    (m f (n f x)))))))
