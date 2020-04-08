(error "foo")

(define-condition foo() ()
    (:report (lambda (condition stream))
        (princ "Stop Fooing around, numbskull!", stream)))