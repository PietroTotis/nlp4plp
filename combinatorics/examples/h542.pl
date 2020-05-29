% h542.json
% "In how many ways can a set of 2 boys and 3 girls be selected from 5 boys and 4 girls?"	40

group(boys).
size(boys,5).
group(girls).
size(girls,4).
subsets(boy,boys,2).
subsets(girl,girls,3).
count(union(selected,[boys,girls])).