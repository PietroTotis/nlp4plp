% L810: A lady buys a dozen eggs, of which two turn out to be bad.  She chose four eggs to scramble for breakfast.  Find the chances that she chooses all good eggs. ## Solution= 14/33

group(1-6).
size(1-6, 12).

given(exactly(2, 1-6, bad)).

take(1-6, 2-4, 4).

probability(none(2-4, bad)).

property(property, [bad]).

