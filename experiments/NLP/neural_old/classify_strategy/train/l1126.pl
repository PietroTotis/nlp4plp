% L1126: In Kokomo, 65 percent are conservatives, 20 percent are liberals and 15 percent are independents.  Records show that in a particular election 82 percent of conservatives voted, 65 percent of liberals voted and 50 percent of independents voted.  If the person from the city is selected at random and it is learned that he/she did not vote, what is the probability that the person is liberal? ## Solution= 0.2671755725

group(people).

given(exactly(rel(82/100, people, conservative), people, and(conservative, vote))).
given(exactly(rel(65/100, people), people, conservative)).
given(exactly(rel(15/100, people), people, independent)).
given(exactly(rel(20/100, people), people, liberal)).
given(exactly(rel(65/100, people, liberal), people, and(liberal, vote))).
given(exactly(rel(50/100, people, independent), people, and(independent, vote))).

take(people, 3-3, 1).
observe(none(3-3, vote)).

probability(all(3-3, liberal)).

property(ideology, [independent, liberal, conservative]).
property(voted, [vote]).

