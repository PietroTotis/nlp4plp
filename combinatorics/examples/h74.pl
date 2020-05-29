% h74.json
% "In how many ways can we choose five people from a group of ten to form a committee?"	C(10,5)

group(people).
size(people,10).
count(subsets(committee,people,5)).