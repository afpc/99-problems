% Find the number of elements of a list.

my_length([], 0).
my_length([_|L], N0) :-
    my_length(L, N1), 
    N0 is N1 + 1. 
