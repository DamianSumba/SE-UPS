(defrule inicial
(vector $?x)
=>
(assert (vector-aux ?x)))
(defrule ordena
?f <- (vector-aux $?b ?m1 ?m2&:(< ?m2 ?m1) $?e)
=>
(retract ?f)
(assert (vector-aux $?b ?m2 ?m1 $?e)))
(defrule final
(not (vector-aux $?b ?m1 ?m2&:(< ?m2 ?m1) $?e))
(vector $?x)
(vector-aux $?y)
=>
(printout t "el orden es  " ?x " es " ?y crlf))