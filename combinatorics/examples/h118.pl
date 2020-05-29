% h118.json
% "Abigail, Jasmine, and Aaron ran in a race.", "In how many different orders can they finish the race?"	3!

group(girls).
size(girls,3).
property(girls,[abigail,jasmine,aaron]).
count(sequences(race,girls,3)).