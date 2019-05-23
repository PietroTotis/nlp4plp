% M313: Suppose that 54 percent of a town 's population have brown eyes, 51 percent have black hair, and 37 percent have both brown eyes and black hair.  What is the probability that a randomly selected individual in the town will have brown eyes or black hair? ## Solution= 0.68

group(1-9).

given(exactly(rel(54/100, 1-9), 1-9, brown)).
given(exactly(rel(37/100, 1-9), 1-9, and(black, brown))).
given(exactly(rel(51/100, 1-9), 1-9, black)).

take(1-9, 2-9, 1).

probability(all(2-9, or(brown, black))).

property(hair_colour, [black]).
property(eyes_colour, [brown]).

