% Eliminate consecutive duplicates of list elements.

compress([], []).
compress([X], [X]).
compress([X, X|Xs], R) :- 
    compress([X|Xs], R).
compress([X, Y|Ys], [X|R]) :- 
    X \= Y,
    compress([Y|Ys], R).
