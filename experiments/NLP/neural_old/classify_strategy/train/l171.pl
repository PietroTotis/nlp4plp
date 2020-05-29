% L171: In a talon there are 6 red cards, 3 of them being aces, and 6 black cards, 2 of them being aces.  We draw one card at random from the talon.  What is the probability that the drawn card is an ace, when we notice that it is red? ## Solution= 1/2

group(1-3).

given(exactly(3, 1-3, and(ace, red))).
given(exactly(6, 1-3, red)).
given(exactly(2, 1-3, and(ace, black))).
given(exactly(6, 1-3, black)).

take(1-3, 2-4, 1).
observe(all(2-4, red)).

probability(all(2-4, ace)).

property(color, [black, red]).
property(number, [ace]).

