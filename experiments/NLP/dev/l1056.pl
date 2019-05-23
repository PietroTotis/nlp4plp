% L1056: A box contains 5 batteries of which 2 are defective.  An inspector selects 2 batteries at random from the box.  She/he tests the 2 items and observes whether the sampled items are defective.  The box will not be accepted if both of the sampled items are defective.  What is the probability the inspector will reject the box? ## Solution= 0.1

group(1-2).
size(1-2, 5).

given(exactly(2, 1-2, defective)).

take(1-2, 2-5, 2).

probability(all(2-5, defective)).

property(property, [defective]).

