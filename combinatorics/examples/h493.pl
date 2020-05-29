% h493.json
% "A carton of 12 eggs contains 2 spoiled eggs.", "In how many ways can a person choose 3 eggs and get one spoiled egg?"	C(10,2)*C(2,1)

group(eggs).
size(eggs,12).
group(spoiled).
size(spoiled,2).
subset(spoiled,eggs).
count(subsets(choose,eggs,3)).
observe(choose,exactly(1,spoiled)).