% h611.json
% "A box contains 4 red, 5 white, 6 blue, and 7 magenta balls.", "In how many of all possible samples of size 5, chosen without replacement, will every colour be represented?"	7560

group(red).
size(red,4).
group(white).
size(white,5).
group(blue).
size(blue,6).
group(magenta).
size(magenta,7).
union(balls,[red,white,blue,magenta]).
subsets(samples,balls,5).