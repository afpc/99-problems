% P13 (**) Run-length encoding of a list (direct solution).

encode([],[]).
encode([X|Xs],[Y|Ys]) :-
    count(X,Xs,Z,1,Y),
    encode(Z,Ys).

% Trivial empty list cases.
count(X,[],[],1,X).
count(X,[],[],N,[N,X]) :-
    N > 1.
% X is not equal to Y anymore, stop and return X or [N,X].
count(X,[Y|Ys],[Y|Ys],1,X) :-
    X \= Y.
count(X,[Y|Ys],[Y|Ys],N,[N,X]) :-
    N > 1,
    X \= Y.
% X matches first element of list.
count(X,[X|Xs],Y,N,Z) :-
    Nn is N + 1,
    count(X,Xs,Y,Nn,Z).
