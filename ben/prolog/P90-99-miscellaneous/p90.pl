/*
Eight queens problem
This is a classical problem in computer science. The objective is to place eight queens on a chessboard so that no two queens are attacking each other; i.e., no two queens are in the same row, the same column, or on the same diagonal.

Hint: Represent the positions of the queens as a list of numbers 1..N. Example: [4,2,7,3,6,8,5,1] means that the queen in the first column is in row 4, the queen in the second column is in row 2, etc. Use the generate-and-test paradigm.
*/

queens(L) :-
    queens2(L, 8).

queens2([], 0).
queens2([(X,Y)|L], N) :-
    N > 0,
    N1 is N - 1,
    numlist(1, 8, NL), 
    member(X, NL),
    member(Y, NL),
    queens2(L, N1),
    \+ attack((X,Y), ...).

attack((X1,Y1), (X2,Y2)) :-
    X1 == X2,!;
    Y1 == Y2,!;
    D1 is X1 - X2, 
    D2 is Y1 - Y2,
    D1 == D2.
