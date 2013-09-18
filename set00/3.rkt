;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
; f->c : Number -> Number
; GIVEN: a temperature in degrees Fahrenheit as an argument
; RETURNS: the equivalent temperature in degrees Celcius.
; Examples:
; (f->c 32)  => 0
; (f->c 100) => 37.77777777777778
; Strategy is Domain Knowledge
; Test
(require rackunit)
(require rackunit/text-ui)

(define (tem f)
  (* (- f 32) (/ 5 9)))
(tem 32)
(tem 100)

(define-test-suite tem-tests
  (check-equal? (tem 32) 0)
  (check-equal? (tem 100) (/ (* 68 5) 9)))

(run-tests tem-tests)