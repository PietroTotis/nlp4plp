% l1048 skip 0 1048 	An insurer offers a health plan to the employees of a large company. As part of this plan, the individual employees may choose exactly two of the supplementary coverages A, B and C, or they may choose no supplementary coverage. The proportions of the company 's employees that choose coverages A, B, and C are 1/4, 1/3 and 5/12 respectively. Determine the probability that a randomly chosen employee will choose no supplementary coverage. ## Solution= 0.5

group(emp).
% size(emp,1).
property(s1,[a]).
property(s2,[b]).
property(s3,[c]).
given(exactly(rel(1/4,emp),emp,a)).
given(exactly(rel(1/3,emp),emp,b)).
given(exactly(rel(5/12,emp),emp,c)).
given(exactly(0,emp,and(a,and(b,c)))).
given(exactly(0,emp,and(a,and(not(b),not(c))))).
given(exactly(0,emp,and(not(a),and(b,not(c))))).
given(exactly(0,emp,and(not(a),and(not(b),c)))).
%given(exactly(rel(0,emp),emp,and(a,and(b,c)))).
%given(exactly(rel(0,emp),emp,and(a,and(not(b),not(c))))).
%given(exactly(rel(0,emp),emp,and(not(a),and(b,not(c))))).
%given(exactly(rel(0,emp),emp,and(not(a),and(not(b),c)))).
take(emp,chosen,1).
probability(all(chosen,and(not(a),and(not(b),not(c))))).
