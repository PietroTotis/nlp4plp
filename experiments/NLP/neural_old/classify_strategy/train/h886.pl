% H886: In statistical surveys where individuals are selected randomly and are asked questions, experience has shown that only 48 percent of those under 25 years of age, 67 percent between 25 and 50, and 89 percent above 50 will respond.  A social scientist is about to send a questionnaire to a group of randomly selected people.  If 30 percent of the population are younger than 25 and 17 percent are older than 50, what percent will answer her questionnaire? ## Solution= 0.6504

group(1-5).

given(exactly(rel(30/100, 1-5), 1-5, younger)).
given(exactly(rel(67/100, 1-5, between), 1-5, and(between, respond))).
given(exactly(rel(17/100, 1-5), 1-5, older)).
given(exactly(rel(89/100, 1-5, older), 1-5, and(older, respond))).
given(exactly(u, 1-5, between)).
given(exactly(rel(48/100, 1-5, younger), 1-5, and(respond, younger))).

take(1-5, 3-20, 1).

probability(all(3-20, respond)).

property(age, [younger, between, older]).
property(property, [respond]).

