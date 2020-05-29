% L549:  One overnight case contains 2 bottles of aspirin and 3 bottles of thyroid tablets.  A second tote bag contains 3 bottles of aspirin, 2 bottles of thyroid tablets, and I bottle of laxative tablets.  If 1 bottle of tablets is taken at random from each piece of luggage, find the probability that both bottles contain thyroid tablets. ## Solution= 1/5

group(case1).
group(case2).

given(exactly(2, case1, aspirin)).
given(exactly(3, case1, thyroid)).

given(exactly(3, case2, aspirin)).
given(exactly(2, case2, thyroid)).
given(exactly(1, case2, laxative)).

take(case1, bottle1, 1).
take(case2, bottle2, 1).

probability(and(all(bottle1, thyroid), all(bottle2, thyroid))).

property(medicin, [aspirin, thyroid, laxative]).