% H900: You have a shuffled deck of three cards: 2, 3, and 4.  You draw one card.  What is the probability that the 2 is picked given that an even-numbered card is chosen? ## Solution= 1/2

group(1-5).
size(1-5, 3).

given(exactly(1, 1-5, and(3, odd-numbered))).
given(exactly(2, 1-5, even-numbered)).
given(exactly(1, 1-5, and(4, even-numbered))).
given(exactly(1, 1-5, odd-numbered)).
given(exactly(1, 1-5, and(2, even-numbered))).

take(1-5, 2-4, 1).
observe(all(2-4, even-numbered)).

probability(all(2-4, 2)).

property(even, [odd-numbered, even-numbered]).
property(property, [3, 2, 4]).

