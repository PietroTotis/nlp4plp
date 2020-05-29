% h139.json
% "John, Jim, Jay, and Jack have formed a band consisting of 4 instruments.", "If each of the boys can play all 4 instruments, how many different arrangements are possible?"	24

group(band).
size(band,4).
property(band,[john, jim, jay, jack]).
count(sequence(arrangement,band,4)).