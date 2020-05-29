% h438.json
% "Twenty distinct cars park in the same parking lot every day.", "Ten of these cars are US-made, while the other ten are foreign-made.", "The parking lot has exactly twenty spaces, all in a row, so the cars park side by side.", "However, the drivers have varying schedules so the position any car might take on a certain day is random.", "In how many different ways can the cars line up?"	20!

group(cars).
size(cars,20).
property(cars,[distinct]).
group(us_made).
size(us_made,10).
group(foreign_made).
size(foreign_made,10).
union(cars,[us_made,foreign_made]).
group(parking_lot).
size(parking_lot,20).
count(sequences(line,parking_lot,cars)).