% H103: Suppose that we have the following information: 50 percent of emails are spam ; 1 percent of spam emails contain the word `` refinance '' ; 0.001 percent of non-spam emails contain the word `` refinance ''.  Suppose that an email is checked and found to contain the word `` refinance ''.  What is the probability that the email is spam? ## Solution= .999

group(emails).

given(exactly(rel(1/100, emails, spam), emails, and(refinance, spam))).
given(exactly(rel(50/100, emails), emails, spam)).
given(exactly(rel(50/100, emails), emails, non-spam)).
given(exactly(rel(0.001/100, emails, non-spam), emails, and(non-spam, refinance))).

take(emails, 2-4, 1).
observe(all(2-4, refinance)).

probability(all(2-4, spam)).

property(word, [refinance]).
property(spam, [non-spam, spam]).

