% M156: 180 students in a tenth grade high school class take a survey about which video game consoles they own.  80 students answer that one of their consoles is a Playstation, 90 answer that one of their consoles is an Xbox.  Out of these, there are 30 who have both systems.  What is the conditional probability that a randomly selected student has an Xbox given that he or she has a Playstation? ## Solution= 3/8

group(1-9).
size(1-9, 180).

given(exactly(30, 1-9, and(playstation, xbox))).
given(exactly(80, 1-9, playstation)).
given(exactly(90, 1-9, xbox)).

take(1-9, 4-10, 1).
observe(all(4-10, playstation)).

probability(all(4-10, xbox)).

property(xb, [xbox]).
property(ps, [playstation]).

