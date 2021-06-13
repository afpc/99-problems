% Sorting a list of lists according to length of sublists

% a) We suppose that a list (InList) contains elements that are lists themselves. The objective is to sort the elements of InList according to their length. E.g. short lists first, longer lists later, or vice versa.

lsort(L, R) :-
    transform(L, T),
    sort(1, @=<, T, S),
    detransform(S, R).

transform([], []).
transform([X|Xs], [[Len,X]|R]) :-
    length(X, Len),
    transform(Xs, R).

detransform([], []).
detransform([[_,X]|Xs], [X|R]) :-
    detransform(Xs, R).

% b) Again, we suppose that a list (InList) contains elements that are lists themselves. But this time the objective is to sort the elements of InList according to their length frequency; i.e. in the default, where sorting is done ascendingly, lists with rare lengths are placed first, others with a more frequent length come later.

lfsort(L, R) :-
    ftransform(L, L, T),
    sort(1, @=<, T, S),
    detransform(S, R).

ftransform([], _, []).
ftransform([X|Xs], L, [[N,X]|R]) :-
    length(X, Len),
    length(L, TLen),
    include(f(Len), L, S),
    length(S, SLen),
    N is SLen / TLen, 
    ftransform(Xs, L, R).

f(Len, X) :-
    length(X, Len).
