% L523: John is going to graduate from an industrial engineering department in a university by the end of the semester.  Alter being interviewed at two companies he likes, he assesses that his probability of getting an offer from company A is 0.8, and the probability that he gets an offer from company B is 0.6.  If on the other hand, he believes that the probability that he will get offers from both companies is 0.5, what is the probability that he will get at least one offer from these two companies? ## Solution= 0.9

group(2-6).
size(2-6, 2).

given(exactly(rel(0.5, 2-6), 2-6, and(a, b))).
given(exactly(rel(0.6, 2-6), 2-6, b)).
given(exactly(rel(0.8, 2-6), 2-6, a)).

take(2-6, 3-26, 1).

probability(all(3-26, or(a, b))).

property(a, [a]).
property(b, [b]).

