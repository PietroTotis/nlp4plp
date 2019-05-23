% L221: In the Massachusetts Megabucks game, a player selects 6 distinct numbers from 1 to 42 on a ticket, and the Lottery Commission draws 6 distinct numbers at random from 1 to 42.  If all the player 's numbers match the drawn ones, then s/he wins the jackpot.  Find the probability of this event. ## Solution= 1/5245786

group(1-19).
size(1-19, 42).

given(exactly(6, 1-19, distinct)).

take(1-19, 1-12, 6).

probability(all(1-12, distinct)).

property(property, [distinct]).

