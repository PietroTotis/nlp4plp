% h492.json
% "A carton of 12 eggs contains 2 spoiled eggs.", "In how many ways can a person choose 3 eggs and get neither of the spoiled eggs?"	C(10,3)

group(eggs).
size(eggs,12).
group(spoiled).
size(spoiled,2).
subset(spoiled,eggs).
count(subsets(choose,eggs,3)).
observe(choose,none(spoiled)).