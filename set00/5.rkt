;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;sq : Number -> Number
;GIVEN: one number
;RETURNS: the square of the number
;Examples:
;(sq 4) => 16
;(sq 10) => 100
;Strategy is Domain Knowledge
;Test
(require rackunit)
(require rackunit/text-ui)

(define (sq x)
  (* x x))
(sq 4)
(sq 10)

(define-test-suite sq-tests
  (check-equal? (sq 4) 16)
  (check-equal? (sq 10) 100))

(run-tests sq-tests)
  