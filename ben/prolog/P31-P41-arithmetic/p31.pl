% Determine whether a given integer number is prime.

% Very inefficient way. Just check if N has divisors between 2 and N - 1.
is_prime(2).
is_prime(N) :-
    N1 is N - 1, 
    numlist(2, N1, L), 
    partition(is_divisor(N), L, I, _), 
    length(I, 0).

is_divisor(N, D) :- 
    0 =:= N mod D.
