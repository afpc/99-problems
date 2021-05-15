% Find out whether a list is a palindrome.

palindrome([]).
palindrome([_]).
palindrome([X|L]) :-
    append(R,[X],L),
    palindrome(R),!.
