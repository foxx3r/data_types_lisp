; arrays
(defparameter x (make-array 3)) ; #(NIL NIL NIL)
(print (aref x 2)) ; NIL
(setf (aref x 2) 'foo)
(print (aref x 2)) ; FOO
(print x) ; #(NIL NIL FOO)

; hash-table
(defparameter h (make-hash-table))
(setf (gethash 'name h) "Gabriel")
(setf (gethash 'age h) 19)
(format t "~%name = ~A~%age = ~A~%" (gethash 'name h) (gethash 'age h))

; structs
(defstruct person
           name
           age
           address
           girlfriend
           job)

(defparameter *gabriel* (make-person :name "Gabriel"
                                     :age 19
                                     :address "Santos"
                                     :girlfriend "Gabriela"
                                     :job "Programmer"))

(format t "~%name = ~A" (person-name *gabriel*))
(format t "~%age = ~A" (person-age *gabriel*))
(format t "~%address = ~A" (person-address *gabriel*))
(format t "~%girlfriend = ~A" (person-girlfriend *gabriel*))
(format t "~%job = ~A~%" (person-job *gabriel*))

; generic data types
(defmethod add ((a number) (b number))
  (+ a b))

(defmethod add ((a list) (b list))
  (append a b))

(format t "~%~A" (add 7 10))
(format t "~%~A~%" (add '(1 2 3) '(4 5 6)))
