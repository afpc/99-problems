% A list of prime numbers.

prime_list(A, B, L) :- 
    numlist(2, B, L0), 
    eratosthenes(L0, L1), 
    include([X] >> (X >= A), L1, L).

eratosthenes([], []).
eratosthenes([X|Xs], [X|R]) :- 
    remove_multiples(X, Xs, Xss), 
    eratosthenes(Xss, R).

remove_multiples(_, [], []).
remove_multiples(X, [Y|Ys], R) :-
    0 is Y mod X,
    remove_multiples(X, Ys, R).
remove_multiples(X, [Y|Ys], [Y|R]) :-
    \+ 0 is Y mod X,
    remove_multiples(X, Ys, R).
