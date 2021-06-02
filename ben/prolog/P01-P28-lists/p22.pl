% Create a list containing all integers within a given range.

range(N, N, [N]). 
range(N1, N2, [N1|L]) :-
    N1 < N2,
    N3 is N1 + 1, 
    range(N3, N2, L).
