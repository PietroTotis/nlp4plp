% h608.json
% "From a group of 12 people -- 7 of which are men and 5 women -- in how many ways may choose a committee of 4 with 1 man and 3 women?"	70

group(men).
size(men,7).
group(women).
size(women,5).
union(people,[men,women]).
subsets(committee,people,4).
observe(committee,exactly(1,men)).
observe(committee,exactly(3,women)).