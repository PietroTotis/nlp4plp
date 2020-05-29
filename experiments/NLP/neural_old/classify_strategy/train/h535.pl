% H535: In a small raffle, there are only 2 prizes, and 30 tickets are sold.  A boy has 3 tickets in the raffle.  Find the probability that he wins a prize. ## Solution= 28/145

group(1-14).
size(1-14, 30).

given(exactly(2, 1-14, prize)).

take(1-14, 2-5, 3).

probability(atleast(1, 2-5, prize)).

property(property, [prize]).

