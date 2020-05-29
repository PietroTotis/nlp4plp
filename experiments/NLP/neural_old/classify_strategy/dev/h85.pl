% H85: Each of the four engines on an airplane functions correctly on a given flight with probability .99, and the engines function independently of each other.  Assume that the plane can make a safe landing if at least two of its engines are functioning correctly.  What is the probability that the engines will allow for a safe landing? ## Solution= 999999603/1000000000

group(1-5).

given(exactly(rel(.99,1-5), 1-5, function)).

take_wr(1-5, 1-8, 4).


probability(atleast(2, 1-8, function)).

property(outcome(0), [function]).

