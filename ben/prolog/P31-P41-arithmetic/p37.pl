% Calculate Euler's totient function phi(m) (improved).

:- ensure_loaded(p36).

totient_phi_2(N, Phi) :- 
    prime_factors_mult(N, L),
    f(L, Phi).

f([], 1).
f([[P,M]|Xs], N2) :- 
    f(Xs, N1),
    S is (P - 1) * P ** (M - 1), 
    N2 is N1 * S.
