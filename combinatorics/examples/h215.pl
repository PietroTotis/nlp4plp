% h215.json
% "Eight people are divided into four pairs to play bridge.", "In how many ways can this be done?"	2520

group(people).
size(people,8).
count(subsets(pair,people,2)).