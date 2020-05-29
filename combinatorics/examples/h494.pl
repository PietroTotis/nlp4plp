% h494.json
% "In how many ways can 3 red, 4 blue and 5 yellow balls be arranged in a straight line?"	12!/(3!*4!*5!)

group(red).
size(red,3).
group(blue).
size(blue,4).
group(yellow).
size(yellow,4).
union(balls,[red,blue,yellow]).
count(sequences(line,balls)).