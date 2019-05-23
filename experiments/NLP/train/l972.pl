% L972:  Bill and George go target shooting together.  Both shoot at a target at the same time.  Suppose Bill hits the target with probability 0.7, whereas George, independently, hits the target with probability 0.4.  Given that exactly one shot hit the target, what is the probability that it was George 's shot? ## Solution= 2/9

group(3-11).

given(exactly(rel(0.4,3-11), 3-11, hit)).
group(3-2).

given(exactly(rel(0.7,3-2), 3-2, hit)).

take_wr(3-11, 2-2-0, 1).
take_wr(3-2, 2-2-1, 1).
union(2-2, [2-2-0,2-2-1]).

observe(exactly(1, 2-2, hit)).

probability(all(2-2-0, hit)).

property(outcome(1), [hit]).