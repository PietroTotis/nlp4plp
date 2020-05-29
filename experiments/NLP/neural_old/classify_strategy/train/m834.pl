% M834: In a sample of 1000 people, 120 are left - handed.  Two unrelated people are selected at random without replacement.  Find the probability that both people are left - handed. ## Solution= 0.0142942942942943

group(1-6).
size(1-6, 1000).

given(exactly(120, 1-6, left)).

take(1-6, 2-3, 2).

probability(all(2-3, left)).

property(hand, [left]).

