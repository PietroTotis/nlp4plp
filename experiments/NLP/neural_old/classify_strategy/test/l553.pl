% L553:  A truth serum has the property that 90 percent of the guilty suspects are properly judged while, of course, 10 percent of guilty suspects are improperly found innocent.  On the other hand, innocent suspects are misjudged 1 percent of the time.  If the suspect was selected from a group of suspects of which only 5 percent have ever committed a crime, and the serum indicates that he is guilty, what is the probability that he is innocent? ## Solution= 0.17431193

group(pop).

given(exactly(rel(0.05, pop), pop, crime)).

given(exactly(rel(0.90, pop, crime), pop, and(crime, guilty))).
given(exactly(rel(0.01, pop, not(crime)), pop, and(not(crime), guilty))).

take(pop, person, 1).

observe(all(person, guilty)).

probability(all(person, not(crime))).

property(crime, [crime]).
property(test, [guilty]).



