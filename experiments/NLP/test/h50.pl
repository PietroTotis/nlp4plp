% H50: A local fraternity is conducting a raffle where 50 tickets are to be sold - one per customer.  There are three prizes to be awarded.  If the four organizers of the raffle each buy one ticket, what is the probability that the four organizers win all of the prizes? ## Solution= 4/19600

group(1-10).
size(1-10, 50).

given(exactly(3, 1-10, prize)).

take(1-10, 3-3, 4).

probability(exactly(3, 3-3, prize)).

property(property, [prize]).

