% M839: Twelve light bulbs are tested to see if they last as long as the manufacturer claims they do.  Three light bulbs fail the test.  Two light bulbs are selected at random without replacement.  Find the probability that at least one light bulb failed the test. ## Solution= 0.454545454545455

group(1-3).
size(1-3, 12).

given(exactly(3, 1-3, fail)).

take(1-3, 3-3, 2).

probability(atleast(1, 3-3, fail)).

property(property, [fail]).

