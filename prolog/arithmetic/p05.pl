% P35 (**) Determine the prime factors of a given positive integer.

factors(X,Y) :-
    X > 0,
    factors(X,Y,2).

factors(1,[],_) :- !. % Make sure to add a cut! Otherwise 1 gets appended.
% X is a multiple of Z.
factors(X,[Y|Ys],Y) :-
    V is X // Y,
    X =:= V * Y, !,
    factors(V,Ys,Y).
% X is not a multiple of Z.
factors(X,Y,Z) :-
    next(X,Z,Zn),
    factors(X,Y,Zn).

next(_,2,3) :- !. % Make sure to add a cut! Otherwise X itself is also a solution.
next(X,Y,Yn) :-
    Y * Y < X, !,
    Yn is Y + 2.
next(X,_,X). % X > Y * Y
