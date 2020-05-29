% L390: A television station is broadcasting a program during a thunderstorm which causes, on average, one image in 200 to fall below its standard for picture quality.  In broadcasting 500 images what is the probability that exactly 5 of them do not meet standards? ## Solution= 1/15

group(2-4).

given(exactly(rel(1/200,2-4), 2-4, below)).

take_wr(2-4, 1-5, 500).


probability(exactly(5, 1-5, below)).

property(outcome(0), [below]).

