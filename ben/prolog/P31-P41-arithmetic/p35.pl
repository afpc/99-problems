% Determine the prime factors of a given positive integer.
% Construct a flat list containing the prime factors in ascending order.

prime_factors(1,[]).
prime_factors(N, [X|L]) :-
    next_prime(N, 2, X), 
    N1 is N / X,
    prime_factors(N1, L), !.

next_prime(N, X, X) :-
    R is N mod X, 
    R == 0.
next_prime(N, D, X) :-
    R is N mod D,
    R =\= 0, 
    D1 is D + 1, 
    next_prime(N, D1, X).
