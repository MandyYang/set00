;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;even?. : Number -> Boolean
;GIVEN: one number
;RETURNS: true if this number is divisible by 2, 
;         and false otherwise.
;Examples:
;(even?. 4) => true
;(even?. 5) => false
;Strategy is Domain Knowledge
;Test
(require rackunit)
(require rackunit/text-ui)

(define (even?. x)
  (= (remainder x 2) 0))
(even?. 4)
(even?. 5)

(define-test-suite even?.-tests
  (check-equal? (even?. 4) true)
  (check-equal? (even?. 5) false))

(run-tests even?.-tests)