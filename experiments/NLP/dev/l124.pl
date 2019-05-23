% l124 skip 0 124 	In a class of 32 children, 16 have a skateboard, 12 have a bicycle and 17 have a scooter. 5 of them have a skateboard and a bicycle. 7 of them have a skateboard and a scooter. 4 of them have a bicycle and a scooter. They all have at least one of the three things. What is the probability that a child chosen at random from the class has a scooter but not a bicycle? ## Solution=  13/32 

group(class).
size(class,32).
property(p1,[skateboard]).
property(p2,[bicycle]).
property(p3,[scooter]).
given(exactly(16,class,skateboard)).
given(exactly(12,class,bicycle)).
given(exactly(17,class,scooter)).
given(exactly(5,class,and(skateboard,bicycle))).
given(exactly(7,class,and(skateboard,scooter))).
given(exactly(4,class,and(scooter,bicycle))).
given(exactly(32,class,or(scooter,or(bicycle,skateboard)))).
take(class,kid,1).
probability(all(kid,and(scooter,not(bicycle)))).
