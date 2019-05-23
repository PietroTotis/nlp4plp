% m46: In a particular city, 82 percent of the residents have a desktop computer, 47 percent have a desktop computer and a laptop computer, and 3 percent have neither a desktop nor a laptop computer. What is the probability that a randomly selected home has a laptop computer? ## Solution= 0.62

group(city).
property(a,[desktop]).
property(b,[laptop]).
given(exactly(rel(0.82,city),city,desktop)).
given(exactly(rel(0.47,city),city,and(desktop,laptop))).
given(exactly(rel(0.03,city),city,and(not(laptop),not(desktop)))).
take(city,home,1).
probability(all(home,laptop)).
