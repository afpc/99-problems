% P36 (**) Determine the prime factors of a given positive integer (2).

:- ensure_loaded(p05).

factors_mult(X,Y) :-
    X > 0,
    factors_mult(X,Y,2).

factors_mult(1,[],_) :- !.
factors_mult(X,[[Y,M]|Ys],Y) :-
    div(X,Y,M,R), !, % Y divides X.
    next(R,Y,Yn),
    factors_mult(R,Ys,Yn).
factors_mult(X,Y,Z) :-
    !, % Z does not divide X.
    next(X,Z,Zn),
    factors_mult(X,Y,Zn).

div(X,Y,M,R) :-
    div(X,Y,M,R,0),
    M > 0.
div(X,Y,M,R,N) :-
    V is X // Y,
    X =:= V * Y, % Y divides X.
    Nn is N + 1,
    div(V,Y,M,R,Nn).
div(X,_,M,X,M).
