% h548.json
% "In how many ways can a jury of 12 be chosen from 10 men and 7 women so that there are at least 6 men and not more than 4 women on each jury"	1946

group(men).
size(men,10).
group(women).
size(women,7).
union(people,[men,women]).
count(subsets(jury,people,12)).
observe(jury,atleast(6,men)).
observe(jury,atmost(4,women)).