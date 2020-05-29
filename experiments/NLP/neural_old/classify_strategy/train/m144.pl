% M144: You 're at a clothing store that dyes your clothes while you wait.  You get to pick from 4 pieces of clothing: shirt, pants, socks, or hat, and 3 colors: purple, blue, or orange.  If you randomly pick the piece of clothing and the color, what is the probability that you 'll end up with socks that are n't blue? ## Solution= 1/6

group(2-9).
size(2-9, 4).

given(exactly(1, 2-9, shirt)).
given(exactly(1, 2-9, hat)).
given(exactly(1, 2-9, sock)).
given(exactly(1, 2-9, pants)).
group(2-22).
size(2-22, 3).

given(exactly(1, 2-22, purple)).
given(exactly(1, 2-22, blue)).
given(exactly(1, 2-22, orange)).

take_wr(2-22, 2-4-0, 1).
take_wr(2-9, 2-4-1, 1).
union(2-4, [2-4-0,2-4-1]).


probability(and(some(2-4, sock), none(2-4, blue))).

property(outcome(1), [hat, sock, shirt, pants]).
property(outcome(0), [purple, blue, orange]).

