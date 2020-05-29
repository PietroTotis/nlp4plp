% h538.json
% "In how many ways can a first, second and third prize be awarded in a class of 8 students?"	336

group(class).
size(class,8).
count(subsets(award,class,3)).