% M215: Jackie is a makeup artist and carries a lot of makeup around with her.  She has 18 cosmetics in her bag, including 9 mascaras.  What is the probability that a randomly selected makeup item from her bag will be a mascara? ## Solution= 1/2

group(2-4).
size(2-4, 18).

given(exactly(9, 2-4, mascara)).

take(2-4, 3-10, 1).

probability(all(3-10, mascara)).

property(property, [mascara]).

