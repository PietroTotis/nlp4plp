% H106: A random sample of three different letters is selected from the 26 letters of the alphabet.  What is the probability that the second letter is ` a ' given that the first letter is ` c '? ## Solution= 1/25

group(rest(2-17)).

group(1-16).
size(1-16, 26).

given(exactly(1, 1-16, a)).
given(exactly(1, 1-16, c)).

take(rest(2-17), 2-8, 1).
take(1-16, 2-17, 1).
observe(all(2-17, c)).

probability(all(2-8, a)).

property(property, [a, c]).

