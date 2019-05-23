% M287 Each letter of the phrase ` A R A N D O M D R A W ' is written on separate, identical cards. The 11 cards are shuffled and one card is chosen at random. What is the probability that the card chosen has the letter Q written on it? ## Solution=0

group(cards).
given(exactly(3,cards,a)).
given(exactly(2,cards,r)).
given(exactly(1,cards,n)).
given(exactly(2,cards,d)).
given(exactly(1,cards,o)).
given(exactly(1,cards,m)).
given(exactly(1,cards,w)).
property(l,[a,r,n,d,o,m,w]).
take(cards,taken,1).
probability(all(taken,q)).
