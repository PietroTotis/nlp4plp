% h544.json
% "In how many ways can 8 boys be divided into two sets containing 5 and 3 respectively?"	56

group(boys).
size(boys,8).
count(partitions(set,boys,2)).
observe(set,exactly(1,size(5))).
observe(set,exactly(1,size(3))).