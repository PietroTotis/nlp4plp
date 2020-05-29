% H724: A truth serum has the property that 90 percent of the guilty suspects are properly judged while, of course, 10 percent of guilty suspects are improperly found innocent.  On the other hand, innocent suspects are misjudged 1 percent of the time.  If the suspect was selected from a group of suspects of which only 5 percent have ever committed a crime, and the serum indicates that he is guilty, what is the probability that he is innocent? ## Solution= 0.17431193

group(3-10).

given(exactly(rel(5/100, 3-10), 3-10, crime)).
given(exactly(u, 3-10, no_crime)).
given(exactly(rel(10/100, 3-10, crime), 3-10, and(crime, innocent))).
given(exactly(rel(1/100, 3-10, no_crime), 3-10, and(guilty, no_crime))).
given(exactly(rel(90/100, 3-10, crime), 3-10, and(crime, guilty))).

take(3-10, 3-3, 1).
observe(all(3-3, guilty)).

probability(all(3-3, no_crime)).

property(serum, [guilty, innocent]).
property(crime, [no_crime, crime]).

