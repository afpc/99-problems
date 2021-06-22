% A list of Goldbach compositions.

:- ensure_loaded(p40).

goldbach_list(L, U) :- 
    L < 4, 
    goldbach_list(4, U).
goldbach_list(L, U) :- 
    L > U, !.
goldbach_list(L, U) :-
    \+ 0 is L mod 2,
    L1 is L + 1,
    goldbach_list(L1, U).
goldbach_list(L, U) :- 
    0 is L mod 2,
    goldbach(L, [G1, G2]),
    print_goldbach(L, G1, G2),
    L1 is L + 2, 
    goldbach_list(L1, U).

% with limit 
goldbach_list(L, U, M) :- 
    L < 4, 
    goldbach_list(4, U, M).
goldbach_list(L, U, _) :- 
    L > U, !.
goldbach_list(L, U, M) :- 
    \+ 0 is L mod 2, 
    L1 is L + 1, 
    goldbach_list(L1, U, M).
goldbach_list(L, U, M) :- 
    0 is L mod 2, 
    goldbach(L, [G1, G2]), 
    (  G1 > M 
    -> print_goldbach(L, G1, G2)
    ;  true),
    L1 is L + 2, 
    goldbach_list(L1, U, M).

print_goldbach(T, G1, G2) :- 
    writef('%t = %t + %t', [T, G1, G2]), nl.
