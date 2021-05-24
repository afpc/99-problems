% Duplicate the elements of a list.

dupli([], []).
dupli([X|Xs], [X,X|R]) :-
    dupli(Xs, R).
