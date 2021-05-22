% Flatten a nested list structure.

my_flatten([], []).
my_flatten(X, [X]) :- 
    \+ is_list(X).
my_flatten([H0|T0], L) :-
    my_flatten(H0, H1), 
    my_flatten(T0, T1), 
    append(H1, T1, L). 
