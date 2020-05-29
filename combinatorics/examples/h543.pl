% h543.json
% "From 8 soldiers, 7 sailors and 5 airmen how many sets can be formed each containing 5 soldiers, 4 sailors and 3 airmen?"	19600

group(soldiers).
size(soldiers,8).
group(sailors).
size(sailors,7).
group(airmen).
size(airmen,5).
union(army,[soldiers,sailors,airmen]).
count(subsets(set,army)).
observe(set,exactly(5,soldiers)).
observe(set,exactly(4,sailors)).
observe(set,exactly(3,airmen)).