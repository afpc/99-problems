% Truth tables for logical expressions.
% Define predicates and/2, or/2, nand/2, nor/2, xor/2, impl/2 and equ/2 (for logical equivalence) which succeed or fail according to the result of their respective operations; e.g. and(A,B) will succeed, if and only if both A and B succeed. Note that A and B can be Prolog goals (not only the constants true and fail).
% A logical expression in two variables can then be written in prefix notation, as in the following example: and(or(A,B),nand(A,B)).
% Now, write a predicate table/3 which prints the truth table of a given logical expression in two variables.

and(A, B) :- 
    A, B.

nand(A, B) :- 
    \+ and(A, B). 

or(A, B) :-
    A, !;
    B.

nor(A, B) :- 
    \+ or(A, B).

xor(A, B) :-
    A \== B,
    (A, !; 
    B).

impl(A, B) :- 
    \+ A, !; 
    (A, B).

equ(A, B) :- 
    A == B.

table(A, B, Exp) :- 
    bind(A), 
    bind(B),
    do(A, B, Exp),  
    fail.

do(A, B, _) :- 
    writef('%t, %t, ', [A,B]), 
    fail.
do(_, _, Exp) :-
    Exp, !,
    write('true'), nl.
do(_, _, _) :- 
    write('false'), nl.

bind(true).
bind(false).
