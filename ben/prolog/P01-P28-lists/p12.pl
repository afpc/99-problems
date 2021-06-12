% Decode a run-length encoded list.

decode([], []).
decode([X|Xs], [X|R]) :-
    \+ is_list(X),
    decode(Xs, R).
decode([[0,_]|Xs], R) :-
    decode(Xs, R).
decode([[N0,X]|Xs], [X|R]) :-
    N0 > 0,
    N1 is N0 - 1, 
    decode([[N1,X]|Xs], R).
