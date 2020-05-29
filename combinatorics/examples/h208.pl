% h208.json
% "In how many ways can we choose a set of 5 different letters out of the 26 possible lower-case letters?"	26*25*24*23*22

group(letters).
size(letters,26).
count(subset(choice,letters,5)).