% L181: The Bureau of the Census reports that the median family income for all families in the United States during the year 2003 was $ 43,318.  That is, half of all American families had incomes exceeding this amount, and half had incomes equal to or below this amount.  Suppose that four families are surveyed and that each one reveals whether its income exceeded $ 43,318 in 2003.  What is the probability that at least two had incomes exceeding $ 43,318? ## Solution= 11/16

group(2-10).
size(2-10, 2).

given(exactly(1, 2-10, below)).
given(exactly(1, 2-10, exceed)).

take_wr(2-10, 3-6, 4).


probability(atleast(2, 3-6, exceed)).

property(outcome(0), [exceed, below]).

