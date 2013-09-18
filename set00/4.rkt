;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; tip : Number Number -> Number
; GIVEN: the amount of the bill in dollars and the
;        percentage of tip
; RETURNS: the amount of the tip in dollars.
; Examples:
; (tip 10 0.15)  => 1.5
; (tip 20 0.17)  => 3.4
; Strategy is Domain Knowledge
; Test
(require rackunit)
(require rackunit/text-ui)

(define (tip x y)
  (* x y))
(tip 10 0.15)
(tip 20 0.17)

(define-test-suite tip-tests
  (check-equal? (tip 10 0.15) 1.5)
  (check-equal? (tip 20 0.17) 3.4))

(run-tests tip-tests)