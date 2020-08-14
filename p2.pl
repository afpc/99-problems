% P02 (*): Find the last but one element of a list.

% There are only two elements, pick the first one.
my_last_but_one(X,[X,_]).
% At least 3 elements, skip the first.
my_last_but_one(X,[_,Y|Ys]) :-
    my_last_but_one(X,[Y|Ys]).
