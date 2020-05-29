% h491.json
% "From a group of 5 men and 6 women, how many committees of size 3 are possible with 1 man and 2 women?"	C(5,1)*C(6,3)


group(men).
size(men,5).
group(women).
size(women,6).
union(people,[men,women]).
count(subsets(committee, people, 3)).
observe(committee,exactly(1,men)).
observe(committee,exactly(2,women)).