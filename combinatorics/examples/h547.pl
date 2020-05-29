% h547.json
% "From 4 oranges, 3 bananas and 2 apples, how many selections of 5 pieces of fruit can be made, talking at least one of each kind?"	98

group(oranges).
size(oranges,4).
group(bananas).
size(bananas,3).
group(apples).
size(apples,2).
union(fruit,[oranges,bananas,apples]).
count(subsets(selection,fruit,5)).
observe(selection,atleast(1,oranges)).
observe(selection,atleast(1,bananas)).
observe(selection,atleast(1,apples)).