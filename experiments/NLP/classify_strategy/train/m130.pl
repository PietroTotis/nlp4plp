% M130: You 've decided you want a plant for your room.  At the gardening store, there are 4 different kinds of plants: tulip, fern, cactus, and ficus, and 4 different kinds of pots to hold the plants: clay pot, plastic pot, metal pot, and wood pot.  If you randomly pick the plant and the pot, what is the probability that you 'll end up with a tulip in a plastic pot? ## Solution= 1/16

group(2-28).
size(2-28, 4).

given(exactly(1, 2-28, wood)).
given(exactly(1, 2-28, plastic)).
given(exactly(1, 2-28, metal)).
given(exactly(1, 2-28, clay)).
group(2-12).
size(2-12, 4).

given(exactly(1, 2-12, ficus)).
given(exactly(1, 2-12, cactus)).
given(exactly(1, 2-12, tulip)).
given(exactly(1, 2-12, fern)).

take_wr(2-28, 3-4-0, 1).
take_wr(2-12, 3-4-1, 1).
union(3-4, [3-4-0,3-4-1]).


probability(and(some(3-4, tulip), some(3-4, plastic))).

property(outcome(1), [tulip, cactus, ficus, fern]).
property(outcome(0), [wood, plastic, metal, clay]).

