#Find the last element of a list.

my_last(X, [X|[]]).
my_last(X, [_|L]) :-
    my_last(X, L).
