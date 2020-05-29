% h612.json
% "From three Russians, four Americans, and two Spaniards, how many selections of people can be made, taking at least one of each kind?"	315

group(russians).
size(russians,3).
group(americans).
size(americans,4).
group(spaniards).
size(spaniards,2).
union(people,[russians,americans,spaniards]).
subsets(selection,people).
observe(selection,atleast(1,russians)).
observe(selection,atleast(1,americans)).
observe(selection,atleast(1,spaniards)).