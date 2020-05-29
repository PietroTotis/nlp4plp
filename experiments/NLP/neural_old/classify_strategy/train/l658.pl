% L658: A media rental store rented the following number of movie titles in each of these categories: 170 horror, 230 drama, 120 mystery, 310 romance, and 150 comedy.  If a person selects a movie to rent, find the probability that it is a romance or a comedy. ## Solution= 23/49

group(1-4).

given(exactly(170, 1-4, horror)).
given(exactly(230, 1-4, drama)).
given(exactly(310, 1-4, romance)).
given(exactly(120, 1-4, mystery)).
given(exactly(150, 1-4, comedy)).

take(1-4, 2-6, 1).

probability(all(2-6, or(romance, comedy))).

property(property, [romance, mystery, horror, comedy, drama]).

