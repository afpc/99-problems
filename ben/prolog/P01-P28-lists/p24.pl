% Lotto: Draw N different random numbers from the set 1..M.

rnd_select(0, _, []).
rnd_select(N0, M0, [X|L]) :-
    N0 > 0,
    N1 is N0 - 1,
    M1 is M0 + 1,
    random(1, M1, X),
    rnd_select(N1, M0, L).
