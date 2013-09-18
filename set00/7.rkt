;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; circumference : Number -> Number
; GIVEN: the radius r of a circle 
; RETURNS: its circumference, using the formula 2 * pi * r.
; Examples:
; (circumference 1)  =>  6.283185307179586 
; (circumference 0)  =>  0
; Strategy is Domain Knowledge
; Test
(require rackunit)
(require rackunit/text-ui)

(define (circumference x)
        (* 2 pi x))
(circumference 1)
(circumference 0)

(define-test-suite circumference-tests
  (check-equal? (circumference 1) (* 2 pi))
  (check-equal? (circumference 0) 0))

(run-tests circumference-tests)

