% L308: A bakery makes 80 loaves of bread daily.  Ten of them are underweight.  An inspector weights 5 loaves at random.  What is the probability an underweight loaf will be discovered? ## Solution= 0.496547

group(1-5).
size(1-5, 80).

given(exactly(10, 1-5, underweight)).

take(1-5, 3-5, 5).

probability(atleast(1, 3-5, underweight)).

property(property, [underweight]).

