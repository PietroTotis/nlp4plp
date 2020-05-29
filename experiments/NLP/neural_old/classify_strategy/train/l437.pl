% L437: A student does not want to be late for his final exam in Statistics, so he sets the alarm on three battery operated alarm clocks.  If each individual alarm clock has a 10 percent chance of failing, what is the probability of all three alarm clocks failing? ## Solution= 0.001

group(1-20).

given(exactly(rel(0.1,1-20), 1-20, fail)).

take_wr(1-20, 1-18, 3).


probability(all(1-18, fail)).

property(outcome(0), [fail]).

