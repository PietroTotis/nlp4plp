% M151: In a class of 10, there are 5 students who play soccer.  If the teacher chooses 2 students, what is the probability that both of them play soccer? ## Solution= 2/9

group(1-3).
size(1-3, 10).

given(exactly(5, 1-3, soccer)).

take(1-3, 2-6, 2).

probability(all(2-6, soccer)).

property(sport, [soccer]).

