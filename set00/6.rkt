;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;quadratic-root : Number Number Number -> Number
;Given: arguments a, b, c.
;RETURNS：root of the corresponding quadratic equation.
;Examples:
;(quadratic-root 1 -2 1) => 1
;(quadratic-root 3 -13 4) => 4
;Strategy is Domain Knowledge
;Test
(require rackunit)
(require rackunit/text-ui)

(define (quadratic-root a b c)
  (/ (- (sqrt (- (* b b) (* 4 a c))) b) (* 2 a)))
(quadratic-root 1 -2 1)
(quadratic-root 3 -13 4)

(define-test-suite quadratic-root-tests
  (check-equal? (quadratic-root 1 -2 1) 1)
  (check-equal? (quadratic-root 3 -13 4) 4))

(run-tests quadratic-root-tests)

