% L450: An airplane is built to be able to fly on one engine.  If the plane 's two engines operate independently, and each has a 1 percent chance of failing in any given four-hour flight, what is the chance the plane will fail to complete a four-hour flight to Oklahoma due to engine failure? ## Solution= 0.0001

group(2-6).

given(exactly(rel(0.01,2-6), 2-6, fail)).

take_wr(2-6, 2-7, 2).


probability(all(2-7, fail)).

property(outcome(0), [fail]).

