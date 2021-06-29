% Truth tables for logical expressions (3).
% Generalize problem P47 in such a way that the logical expression may contain any number of logical variables. Define table/2 in a way that table(List,Expr) prints the truth table for the expression Expr, which contains the logical variables enumerated in List.

:- ensure_loaded(p47).

table(L, Exp) :- 
    bind_all(L),
    do(L, Exp),  
    fail.

do(L, Exp) :- 
    write_list(L, ' '), 
    write_exp(Exp).

write_list([], _).
write_list([X|Xs], S) :- 
    write(X), write(S),
    write_list(Xs, S).

write_exp(Exp) :-
    Exp, !,
    write('true'), nl.
write_exp(_) :-
    write('false'), nl.

bind_all([]).
bind_all([X|Xs]) :- 
    bind(X), 
    bind_all(Xs).
