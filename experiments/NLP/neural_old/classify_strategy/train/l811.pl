% L811: A lady buys a dozen eggs, of which two turn out to be bad.  She chose four eggs to scramble for breakfast.  Find the chances that she chooses two good and two bad eggs. ## Solution= 1/11

group(1-6).
size(1-6, 12).

given(exactly(2, 1-6, bad)).

take(1-6, 2-4, 4).

probability(and(exactly(2, 2-4, bad), exactly(2, 2-4, not(bad)))).

property(property, [bad]).

