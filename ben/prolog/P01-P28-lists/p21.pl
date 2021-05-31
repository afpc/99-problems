% Insert an element at a given position into a list.

insert_at(A, L, 1, [A|L]).
insert_at(A, [X|Xs], N0, [X|R]) :-
    N0 > 1, 
    N1 is N0 - 1,
    insert_at(A, Xs, N1, R).
