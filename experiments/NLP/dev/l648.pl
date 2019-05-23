% L648: A CBS News/New York Times poll found that of 764 adults surveyed nationwide, 34 percent felt that we are spending too much on space exploration, 19 percent felt that we are spending too little, 35 percent felt that we are spending the right amount, and the rest said `` do n't know '' or had no answer.  If one of the respondents is selected at random, what is the probability that the person felt that we are spending the right amount or too little? ## Solution= 0.54

group(1-11).
size(1-11, 764).

given(exactly(rel(19/100, 1-11), 1-11, little)).
given(exactly(rel(12/100, 1-11), 1-11, no)).
given(exactly(rel(35/100, 1-11), 1-11, right)).
given(exactly(rel(34/100, 1-11), 1-11, much)).

take(1-11, 2-2, 1).

probability(all(2-2, or(right, little))).

property(property, [little, much, right, no]).

