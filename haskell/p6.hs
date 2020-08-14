-- P06 (*) Find out whether a list is a palindrome.

isPalindrome :: Eq x => [x] -> Bool
isPalindrome l = (==) l (reverse l)
