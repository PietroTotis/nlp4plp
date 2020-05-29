% M837: Twelve light bulbs are tested to see if they last as long as the manufacturer claims they do.  Three light bulbs fail the test.  Two light bulbs are selected at random without replacement.  Find the probability that both light bulbs failed the test. ## Solution= 0.0454545454545455

group(1-3).
size(1-3, 12).

given(exactly(3, 1-3, fail)).

take(1-3, 3-3, 2).

probability(all(3-3, fail)).

property(property, [fail]).

