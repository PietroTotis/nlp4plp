% M887: The probability that a cassette tape is defective is 0.03.  If two tapes are selected at random, what is the probability that both are good? ## Solution= 0.9409

group(tapes).

given(exactly(rel(0.03, tapes), tapes, defective)).

take(tapes, 2-3, 2).

probability(none(2-3, defective)).

property(property, [defective]).

