% H811: The probability of getting through by telephone to buy concert tickets is 0.92.  For the same event, the probability of accessing the vendor 's Web site is 0.95.  Assume that these two ways to buy tickets are independent.  What is the probability that someone who tries to buy tickets through the Internet and by phone will obtain tickets? ## Solution= .996

group(2-14).

given(exactly(rel(.95,2-14), 2-14, through)).
group(1-7).

given(exactly(rel(.92,1-7), 1-7, through)).

take_wr(1-7, 3-5-0, 1).
take_wr(2-14, 3-5-1, 1).
union(3-5, [3-5-0,3-5-1]).


probability(atleast(1, 3-5, through)).

property(outcome(0), [through]).

