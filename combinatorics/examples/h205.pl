% h205.json
% "In a class of 200 students, we wish to elect a President, Vice President, Secretary, and Treasurer.", "In how many ways can these four officers be selected?"	200*199*198*197

group(class).
size(class,200).
count(select(officers,class,4)).