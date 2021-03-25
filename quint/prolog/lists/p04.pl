% P04 (*) Find the number of elements of a list.

% Length of empty list is 0.
my_length([],0).
% Get length of the tail, N is that length + 1.
my_length([_|Xs],N) :-
    my_length(Xs,Ns),
    N is Ns + 1.
