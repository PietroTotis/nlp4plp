% l121 skip 0 121 	There are 30 children in a class and they all have at least one cat or dog. 14 children have a cat, 19 children have a dog. What is the probability that a child chosen at random from the class has both a cat and a dog? ## Solution= 3/30

group(class).
size(class,30).
property(p1,[cat]).
property(p2,[dog]).
given(exactly(14,class,cat)).
given(exactly(19,class,dog)).
given(exactly(30,class,or(cat,dog))).
take(class,kid,1).
probability(all(kid,and(cat,dog))).
