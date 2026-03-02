(define (reverse items)
    (if (null? items)
        nil
        (append (reverse (cdr items)) (list (car items)))))

; A more efficient iterative version
(define (reverse items)
    (define (iter rest result)
        (if (null? rest)
            result
            (iter (cdr rest) (cons (car rest) result))))
    (iter items nil))
