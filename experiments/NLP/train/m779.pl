% M779: Two common sources of protein for US adults are beans and meat.  If 75 percent of US adults eat meat, 80 percent eat beans and 70 percent eat both meat and beans, what is the probability that a randomly selected adult in the US eats meat or beans? ## Solution= 85/100

group(2-6).

given(exactly(rel(75/100, 2-6), 2-6, meat)).
given(exactly(rel(80/100, 2-6), 2-6, bean)).
given(exactly(rel(70/100, 2-6), 2-6, and(bean, meat))).

take(2-6, 2-31, 1).

probability(all(2-31, or(meat, bean))).

property(beans, [bean]).
property(meat, [meat]).

