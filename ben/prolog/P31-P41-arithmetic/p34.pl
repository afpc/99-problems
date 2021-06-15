% Calculate Euler's totient function phi(m).

:- ensure_loaded(p33).
:- arithmetic_function(totient_phi/1).

totient_phi(1, 1) :- !.
totient_phi(X, N) :-
    X1 is X - 1, 
    numlist(1, X1, L),
    partition(coprime(X), L, S, _), 
    length(S, N).  
