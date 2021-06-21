% Goldbach's conjecture.

:- ensure_loaded(p39).

goldbach(N, [N1, N2]) :- 
    prime_list(2, N, L),
    member(N1, L), 
    N2 is N - N1, 
    member(N2, L).     
