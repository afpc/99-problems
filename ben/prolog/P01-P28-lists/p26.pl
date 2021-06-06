% Generate the combinations of K distinct objects chosen from the N elements of a list. 

sublist(S, L) :-
    append(_, L2, L), 
    append(S, _, L2).

sublist2([], _).
sublist2([X|Xs], L) :-
    select(X, L, R),
    sublist2(Xs, R).   

sublist3([], _).
sublist3([X|Xs], L) :-
    my_select(X, L, R),
    sublist3(Xs, R).   

my_select(X, [X|Xs], Xs).
my_select(X, [_|Xs], R) :-
    my_select(X, Xs, R).

combination(N, L, S) :-
    sublist3(S, L),
    length(S, N).
