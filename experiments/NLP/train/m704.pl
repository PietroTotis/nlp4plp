% M704: Seventy-five percent of the freshmen at a college go on to graduate.  What is the probability that three freshmen chosen at random from the college will all graduate? ## Solution= 0.421875

group(1-5).

given(exactly(rel(75/100, 1-5), 1-5, graduate)).

take(1-5, 2-7, 3).

probability(all(2-7, graduate)).

property(decision, [graduate]).

