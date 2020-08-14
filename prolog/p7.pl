% P07 (**) Flatten a nested list structure.

% This is not that trivial (imo), had to search the web.
my_flatten(X, [X]) :-
    \+ is_list(X). % true is X is bound to the empty list.

my_flatten([], []).
% Flatten head and tail and append to Y.
my_flatten([X|Xs],Y) :-
    my_flatten(X,Z),
    my_flatten(Xs,Zs),
    append(Z,Zs,Y).
