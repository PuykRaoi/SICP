#lang scheme

; Exercise 1.41

; Define a procedure double that takes a procedure of one
; argument and returns a procedure that applies the original
; procedure twice.
; Example (double inc) should be a procedure that adds 2.
(define (double p)
  (lambda (x)
    (p (p x))))

(define (inc x) (+ x 1))

((double inc) 6)