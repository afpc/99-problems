% P01 (*): Find the last element of a list

% Only one element remaining.
my_last(X,[X]).
% If there is a tail, skip the head.
my_last(X,[_|L]) :-
    my_last(X,L).
