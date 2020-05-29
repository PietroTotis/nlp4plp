% L110: A spinner is made from a piece of card in the shape of a regular pentagon with a toothpick pushed through the center.  When the spinner is spun and it lands on an edge, each of the numbers 1, 2, 3, 4 or 5 is equally likely.  If the spinner is spun twice, what is the probability the two scores are different? ## Solution= 4/5

group(2-3).
size(2-3, 5).

given(exactly(1, 2-3, 1)).
given(exactly(1, 2-3, 4)).
given(exactly(1, 2-3, 2)).
given(exactly(1, 2-3, 5)).
given(exactly(1, 2-3, 3)).

take_wr(2-3, 2-5, 2).


probability(all_diff(2-5,outcome(0))).

property(outcome(0), [1, 3, 2, 5, 4]).

