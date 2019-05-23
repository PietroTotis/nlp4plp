% H858: There are 14 marketing firms hiring new graduates.  Kate randomly found the recruitment ads of six of these firms and sent them her resume.  If three of these marketing firms are in Maryland, what is the probability that Kate did not apply to a marketing firm in Maryland? ## Solution= 0.15384615

group(1-5).
size(1-5, 14).

given(exactly(3, 1-5, maryland)).

take(1-5, 2-8, 6).

probability(none(2-8, maryland)).

property(property, [maryland]).

