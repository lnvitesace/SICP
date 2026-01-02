(define (filtered-accumulate combiner null-value term a next b filter)
  	(if (> a b)
      	null-value
      	(if (filter a)
          	(combiner (term a)
                    	(filtered-accumulate combiner null-value term (next a) next b filter))
          	(filtered-accumulate combiner null-value term (next a) next b filter))))

(filtered-accumulate + 0 square a inc b prime?)

(filtered-accumulate * 1 identity 1 inc n (lambda (x) (= (gcd x n) 1)))
