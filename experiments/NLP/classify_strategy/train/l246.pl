% L246: Knowing that we obtained at least once the outcome heads in three independent tosses of a fair coin, what is the probability that we obtained heads three times? ## Solution= 1/7

group(1-18).
size(1-18, 2).

given(exactly(1, 1-18, v(1-18,0))).
given(exactly(1, 1-18, head)).

take_wr(1-18, 1-14, 3).
observe(atleast(1, 1-14, head)).


probability(all(1-14, head)).

property(outcome(0), [head, v(1-18,0)]).

