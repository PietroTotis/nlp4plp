% L467: On the average, 1 computer in 800 crashes during a severe thunderstorm.  A certain company had 4,000 working computers when the area was hit by a severe thunderstorm.  Compute the probability that less than 10 computers crashed. ## Solution= 0.968

group(2-7).

given(exactly(rel(1/800,2-7), 2-7, crash)).

take_wr(2-7, 2-12, 4000).


probability(less_than(10, 2-12, crash)).

property(property(0), [crash]).

