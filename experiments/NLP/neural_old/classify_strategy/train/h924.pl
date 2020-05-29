% H924: A spam filter is designed by looking at commonly occurring phrases in spam.  Suppose that 80 percent of email is spam.  In 10 percent of the spam emails, the phrase `` free money '' is used, whereas this phrase is only used in 1 percent of non-spam emails.  A new email has just arrived, which does mention `` free money ''.  What is the probability that it is spam? ## Solution= .9756

group(2-6).

given(exactly(u, 2-6, non-spam)).
given(exactly(rel(80/100, 2-6), 2-6, spam)).
given(exactly(rel(10/100, 2-6, spam), 2-6, and(free, spam))).
given(exactly(rel(1/100, 2-6, non-spam), 2-6, and(free, non-spam))).

take(2-6, 4-3, 1).
observe(all(4-3, free)).

probability(all(4-3, spam)).

property(money, [free]).
property(spam, [non-spam, spam]).

