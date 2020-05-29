% L768: Butch will miss an important TV program while taking his statistics exam, so he sets both his VCRs to record it.  The first one records 70 percent of the time, and the second one records 60 percent of the time.  What is the probability that he gets home after the exam and finds no copies of his program? ## Solution= 0.12

group(2-2).

given(exactly(rel(70/100,2-2), 2-2, record)).
group(2-13).

given(exactly(rel(60/100,2-13), 2-13, record)).

take_wr(2-13, 1-21-0, 1).
take_wr(2-2, 1-21-1, 1).
union(1-21, [1-21-0,1-21-1]).


probability(all(1-21, not(record))).

property(outcome(0), [record]).

