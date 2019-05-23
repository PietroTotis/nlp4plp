% H997: Our boss Anton forgets to bring his apple 20 percent of the time.  He takes a break at 4 o'clock 97 percent of the time.  He would like to eat his apple during his break.  What are the chances of this happening on a particular day? ## Solution= .776

group(1-8).

given(exactly(u, 1-8, eat)).
given(exactly(rel(20/100,1-8), 1-8, forget)).
group(2-4).

given(exactly(rel(97/100,2-4), 2-4, break)).

take_wr(1-8, 1-3-0, 1).
take_wr(2-4, 1-3-1, 1).
union(1-3, [1-3-0,1-3-1]).


probability(and(some(1-3, eat), some(1-3, break))).

property(outcome(1), [break]).
property(outcome(0), [forget, eat]).

