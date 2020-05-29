% h237.json
% "A house has 12 rooms.", "We want to paint 4 yellow, 3 purple, and 5 red.", "In how many ways can this be done?"	27,720

group(rooms).
size(rooms,12).
count(sequences_wr(paint,rooms,12)).
observe(paint,exactly(4,yellow)).
observe(paint,exactly(3,purple)).
observe(paint,exactly(5,red)).

% group(rooms).
% size(rooms,12).
% property(colors,[yellow,purple,red]).
% count(sequences_wr(paint,rooms,colors)).
% observe(paint,exactly(4,yellow)).
% observe(paint,exactly(3,purple)).
% observe(paint,exactly(5,red)).