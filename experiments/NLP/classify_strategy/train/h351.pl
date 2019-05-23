% H351: A magician designed an unfair coin so that the probability of getting a head on a flip is 60 percent.  If he flips the coin three times, what is the probability that he flips more heads than tails? ## Solution= 81/125

group(1-6).

given(exactly(rel(60/100,1-6), 1-6, head)).

take_wr(1-6, 2-3, 3).


probability(atleast(2, 2-3, head)).

property(outcome(0), [head]).

