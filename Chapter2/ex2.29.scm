;; a.
(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car mobile))

(define (branch-structure branch)
  (cadr mobile))

;; b.
(define (branch-weight)
  (let ((s (branch-structure branch)))
       (if (pair? s)
           (total-weight s)
           s)))
(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

;; c.
(define (branch-balance? branch)
(let ((s (branch-structure branch)))
     (if (pair? s)
         (balance? s)
         #t)))
(define (balance? mobile)
  (let ((left (left-branch mobile)))
       ((right (right-branch mobile)))
       (and (branch-balance? left)
            (branch-balance? right)
            (= (* (branch-length left) (branch-weight left))
               (* (branch-length right) (branch-weight right))))))

;; d.
;; only two fuctions need to be manipulated.

(define (right-branch mobile)
  (cdr mobile))

(define (branch-structure branch)
  (cdr mobile))


