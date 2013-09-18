;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;sum-of-2-largest-numbers: Number Number Number =>Number
;GIVEN: three numbers
;RETURN: the sum of the largest and the second largest numbers 
;Examples:
;(sum-of-2-largest-numbers 5 10 20) => 30
;(sum-of-2-largest-numbers 43 2 35) => 78
;(sum-of-2-largest-numbers 30 20 5) => 50
;(sum-of-2-largest-numbers 5 5 5) => 10
;Design Strategy is Domain knowledge
;Test
(require rackunit)
(require rackunit/text-ui)

(define (sum-of-2-largest-numbers a b c)
  (- (+ a b c)
     (min a b c)))
(sum-of-2-largest-numbers 5 10 20)
(sum-of-2-largest-numbers 43 2 35)
(sum-of-2-largest-numbers 20 30 5)
(sum-of-2-largest-numbers 5 5 5)

(define-test-suite sum-of-2-largest-numbers-tests
  (check-equal? (sum-of-2-largest-numbers 5 10 20) 30)
  (check-equal? (sum-of-2-largest-numbers 43 2 35) 78)
  (check-equal? (sum-of-2-largest-numbers 20 30 5) 50)
  (check-equal? (sum-of-2-largest-numbers 5 5 5) 10))

(run-tests sum-of-2-largest-numbers-tests)


