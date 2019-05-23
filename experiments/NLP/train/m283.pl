% M283: Each boy at a school plays one of four sports: rugby, football, hockey and cricket.  The probability a student chosen at random plays rugby is 0.4.  The probability a student chosen at random plays football is 0.2.  The probability a student chosen at random plays hockey is 0.1.  What is the probability that the student plays cricket? ## Solution= 0.3

group(1-10).

given(exactly(u, 1-10, cricket)).
given(exactly(rel(0.4,1-10), 1-10, rugby)).
given(exactly(rel(0.1,1-10), 1-10, hockey)).
given(exactly(rel(0.2,1-10), 1-10, football)).

take_wr(1-10, 5-8, 1).


probability(all(5-8, cricket)).

property(outcome(0), [cricket, football, rugby, hockey]).

