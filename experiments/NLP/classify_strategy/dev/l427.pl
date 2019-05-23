% L427: A man and his wife appear in an interview for two vacancies in the same post.  The probability of husband 's selection is 1 / 7 and the probability of wife 's selection is 1/5.  What is the probability that only one of them is selected? ## Solution= 2/7

group(2-15).

given(exactly(rel(1/5,2-15), 2-15, selection)).
group(2-4).

given(exactly(rel(1/7,2-4), 2-4, selection)).

take_wr(2-15, 1-6-0, 1).
take_wr(2-4, 1-6-1, 1).
union(1-6, [1-6-0,1-6-1]).


probability(exactly(1, 1-6, selection)).

property(outcome(0), [selection]).

