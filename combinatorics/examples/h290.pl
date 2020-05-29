% h290.json
% "In a workshop there are 4 kinds of beds, 3 kinds of closets, 2 kinds of shelves and 7 kinds of chairs.", "In how many ways can a person decorate his room if he wants to buy in the workshop one shelf, one bed and one of the following: a chair or a closet?"	80

group(beds).
size(beds,4).
group(closets).
size(closets,3).
group(shelves).
size(shelves,2).
group(chairs).
size(chairs,7).
union(workshop,[beds,closets,shelves,chairs]).
count(subsets(decorate,workshop,3)).
observe(decorate,exactly(1,shelf)).
observe(decorate,exactly(1,bed)).
observe(decorate,exactly(1,or(chair,closet))).