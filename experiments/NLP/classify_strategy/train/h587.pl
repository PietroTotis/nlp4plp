% H587: The probability that persons aged 60 and 65 will survive the next year is 0.97 and 0.96 respectively.  From a group of 5 people of whom 3 are aged 60 and 2 aged 65, what is the probability that not more than one will die within next year? ## Solution= 0.98925473

group(1-8).

given(exactly(rel(.96,1-8), 1-8, survive)).
group(1-6).

given(exactly(rel(.97,1-6), 1-6, survive)).

take_wr(1-6, 2-3-0, 3).
take_wr(1-8, 2-3-1, 2).
union(2-3, [2-3-0,2-3-1]).


probability(not(more_than(1, 2-3, not(survive)))).

property(outcome(0), [survive]).

