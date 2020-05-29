% h302.json
% "In a flower shop, there are 5 different types of flowers.", "Two of the flowers are blue, two are red and one is yellow.", "In how many different combinations of different colors can a 3-flower garland be made?"	4


group(blue).
size(blue,2).
group(red).
size(red,2).
group(yellow).
size(yellow).
union(flowers,[blue,red,yellow]).
count(subsets(garland,flowers,3)).
observe(garland,all_diff).