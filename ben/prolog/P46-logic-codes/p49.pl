% Gray code.
% An n-bit Gray code is a sequence of n-bit strings constructed according to certain rules. For example,
% n = 1: C(1) = ['0','1'].
% n = 2: C(2) = ['00','01','11','10'].
% n = 3: C(3) = ['000','001','011','010',´110´,´111´,´101´,´100´].

gray(1,['0', '1']) :- !.
gray(N, R) :-
    N > 0,
    N1 is N - 1,
    gray(N1, L),
    transform(L, R).

transform([], []).
transform([X|Xs], [A, B| Ys]) :-
    atom_concat('1', X, A), 
    atom_concat('0', X, B), 
    transform(Xs, Ys). 
