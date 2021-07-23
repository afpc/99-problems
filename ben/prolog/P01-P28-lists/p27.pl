% Group the elements of a set into disjoint subsets.

group(_, [], []).
group(L, [X|Xs], [S|Ss]) :-
    selectN(X, L, S, _),
    sub_list(S, L, R), 
    group(R, Xs, Ss). 

selectN(0, L, [], L).
selectN(N, L, [E|S], R) :-
    N > 0,
    N1 is N - 1,
    length(L, Length),
    numlist(0, Length, NL),
    member(I, NL),
    nth1(I, L, E),
    drop(I, L, L1), 
    selectN(N1, L1, S, R).

drop(0, L, L).
drop(N, [_|Xs], R) :-
    N > 0, 
    N1 is N - 1,
    drop(N1, Xs, R).

sub_list([], L, L).
sub_list([X|Xs], L, R) :-
    select(X, L, L1), 
    sub_list(Xs, L1, R).
