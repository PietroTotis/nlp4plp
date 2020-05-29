% h273.json
% "Suppose you have six different types of flowers and three planters.", "In how many ways can you put three flowers in the first planter, two flowers in the second planter, and one flower in the final planter?"	60

group(flowers).
size(flowers,6).
property(flowers,[type]).
group(planters).
size(planters,3).
count(partitions(way,flowers,planters)).
observe(way,exactly(1,size(3))).
observe(way,exactly(1,size(2))).
observe(way,exactly(1,size(1))).
