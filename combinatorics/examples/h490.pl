% h490.json
% "From a group of 5 men and 6 women, how many committees of size 3 are possible with no restrictions?"	C(11,3)

group(men).
size(men,5).
group(women).
size(women,6).
union(people,[men,women]).
count(subsets(committee, people, 3)).