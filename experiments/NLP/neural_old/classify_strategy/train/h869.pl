% H869: In transmitting dot and dash signals, a communication system changes 1/4 of the dots to dashes and 1/3 of the dashes to dots.  If 40 percent of the signals transmitted are dots and 60 percent are dashes, what is the probability that a dot received was actually a transmitted dot? ## Solution= 3/5

group(2-6).

given(exactly(rel(1/4, 2-6, dot), 2-6, and(change, dot))).
given(exactly(rel(1/3, 2-6, dash), 2-6, and(change, dash))).
given(exactly(rel(40/100, 2-6), 2-6, dot)).
given(exactly(rel(60/100, 2-6), 2-6, dash)).

take(2-6, 2-22, 1).
observe(all(2-22, or(and(dot, not(change)), and(dash, change)))).

probability(none(2-22, change)).

property(signal, [dash, dot]).
property(property, [change]).

