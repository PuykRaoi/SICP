#lang scheme

; Exercise 1.43

(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (repeated f n)
  (lambda (x)
    (if (= n 1)
        (f x)
        ((compose f (repeated f (- n 1))) x))))

(define (square x) (* x x))

((repeated square 3) 5)