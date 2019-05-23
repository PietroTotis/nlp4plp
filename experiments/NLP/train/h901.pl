% h901 skip 1 901 	Deer ticks can carry both Lyme disease and HGE In a study of ticks in the Midwest, it was found that 16 percent carried Lyme disease, 10 percent had HGE, and that 10 percent of the ticks that had either Lyme disease or HGE carried both diseases. What is the probability that a tick carries both Lyme disease and HGE? ## Solution= 0.26/11 

group(ticks).
property(d1,[lyme]).
property(d2,[hge]).
given(exactly(rel(0.16,ticks),ticks,lyme)).
given(exactly(rel(0.1,ticks),ticks,hge)).
given(exactly(rel(0.1,ticks,or(lyme,hge)),ticks,and(lyme,hge))).
take(ticks,tick,1).
probability(all(tick,and(lyme,hge))).
