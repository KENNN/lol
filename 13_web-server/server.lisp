(define-condition foo () ()
    (:report (lambda (condition stream)
        (princ "Stop Fooing around, numbskull!" stream))))

(defun bad-function ()
    (error 'foo))

(handler-case (bad-function)
    (foo () "somebody signaled foo!")
    (bar () "somebody signaled bar!"))
