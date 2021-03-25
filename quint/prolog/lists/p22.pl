% P22 (*) Create a list containing all integers within a given range.

range(N,N,[N]).
range(N,M,[N|X]) :-
    N < M,
    Nn is N + 1,
    range(Nn,M,X).
