% L651: The source of federal government revenue for a specific year is 50 percent from individual income taxes, 32 percent from social insurance payroll taxes 10 percent from corporate income taxes, 3 percent from excise taxes, 5 percent other.  If a revenue source is selected at random, what is the probability that it comes from individual or corporate income taxes? ## Solution= 0.6

group(1-6).

given(exactly(rel(10/100, 1-6), 1-6, corporate)).
given(exactly(rel(50/100, 1-6), 1-6, individual)).
given(exactly(rel(3/100, 1-6), 1-6, excise)).
given(exactly(rel(32/100, 1-6), 1-6, insurance)).
given(exactly(rel(5/100, 1-6), 1-6, other)).

take(1-6, 2-3, 1).

probability(all(2-3, or(individual, corporate))).

property(property, [other, individual, corporate, excise, insurance]).

