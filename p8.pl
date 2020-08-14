% P08 (**) Eliminate consecutive duplicates of list elements.

compress([],[]).
compress([X],[X]).
% Ignore two consecutive elements.
compress([X,X|Xs],Y) :-
    compress([X|Xs],Y).
% If X and Y are different then add it to the front of Z.
compress([X,Y|Ys],[X|Z]) :-
    X \= Y,
    compress([Y|Ys],Z).
