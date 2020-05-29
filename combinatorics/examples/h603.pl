% h603.json
% "A bookshelf contains 3 Russian novels, 4 German novels, and 5 Spanish novels.", "In how many ways may we align them if there are no constraints as to grouping?"	479001600

group(russian).
size(russian,3).
group(german).
size(german,4).
group(spanish).
size(spanish,5).
union(bookshelf,[russian,german,spanish]).
sequencess(align,bookshelf)
count(align).