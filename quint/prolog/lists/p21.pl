% P21 (*) Insert an element at a given position into a list.

:- ensure_loaded(p20).

% Since inserting is the inverse of removing, we can use the code of P20.
% Just switch in and out.
insert_at(X,Y,N,Z) :-
    remove_at(X,Z,N,Y).
