% Binary search trees (dictionaries)
% Use the predicate add/3, developed in chapter 4 of the course, to write a predicate to construct a binary search tree from a list of integer numbers.

:- ensure_loaded(p56).

construct(L, T) :-
    construct(L, nil, T).

construct([], T, T).
construct([X|Xs], T0, T) :-
    add(X, T0, T1),
    construct(Xs, T1, T).

add(A, nil, t(A, nil, nil)).
add(A, t(X, L, R), t(X, L1, R)) :-
    A @< X, 
    add(A, L, L1).
add(A, t(X, L, R), t(X, L, R1)) :-
    A @> X, 
    add(A, R, R1).

test_symmetric(L) :-
    construct(L, T),
    symmetric(T).
