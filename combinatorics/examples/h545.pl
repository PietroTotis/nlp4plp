% h545.json
% "A commitees of 7 politicians is chosen from 10 liberal members, 8 labor members and 5 independents.", "In how many ways can this be done so as to include exactly 1 independent and at least 3 liberal members and at least 1 labor member?"	73080

group(liberal).
size(liberal,10).
group(labor).
size(labor,8).
group(independent).
size(independent,5).
union(politicians,[liberal,labor,independent]).
count(subsets(committee,politicians,7)).
observe(committee,exactly(1,independent)).
observe(committee,atleast(3,liberal)).
observe(committee,atleast(1,labor)).
