% Rotate a list N places to the left.

rotate(L, 0, L).
rotate([X|Xs], N0, R) :-
    N0 > 0, 
    N1 is N0 - 1,
    append(Xs, [X], L),
    rotate(L, N1, R).
rotate(L, N0, R) :-
    N0 < 0, 
    N1 is N0 + 1,
    last(L, X),
    init(L, Xs), 
    rotate([X|Xs], N1, R).
    
init([_], []).
init([X|Xs], [X|L]) :-
    init(Xs, L).
