% Determine the prime factors of a given positive integer.
% Construct a list containing the prime factors and their multiplicity.

:- ensure_loaded('../P01-P28-lists/p10.pl').
:- ensure_loaded(p35).

prime_factors_mult(N, L2) :-
    prime_factors(N, L), 
    encode(L, L1), 
    maplist(reverse, L1, L2).
