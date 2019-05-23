% M862: Upon arrival at a hospital 's emergency room, patients are categorized according to their condition as critical, serious, or stable.  In the past year: 10 percent of the emergency room patients were critical ; 30 percent of the emergency room patients were serious ; the rest of the emergency room patients were stable ; 40 percent of the critical patients died ; 10 percent of the serious patients died ; and 1 percent of the stable patients died.  Given that a patient survived, calculate the probability that the patient was categorized as serious upon arrival. ## Solution= 0.29220779

group(1-10).

given(exactly(rel(30/100, 1-10), 1-10, serious)).
given(exactly(rel(60/100, 1-10), 1-10, stable)).
given(exactly(rel(10/100, 1-10, serious), 1-10, and(die, serious))).
given(exactly(rel(1/100, 1-10, stable), 1-10, and(die, stable))).
given(exactly(rel(40/100, 1-10, critical), 1-10, and(critical, die))).
given(exactly(rel(10/100, 1-10), 1-10, critical)).

take(1-10, 3-4, 1).
observe(none(3-4, die)).

probability(all(3-4, serious)).

property(property, [die]).
property(condition, [serious, critical, stable]).

