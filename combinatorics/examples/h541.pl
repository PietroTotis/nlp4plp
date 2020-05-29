% h541.json
% "In how many ways can 3 books be selected from 8 different books?"	56

group(books).
size(books,8).
property(books,[different]).
count(subsets(selected,books,3)).