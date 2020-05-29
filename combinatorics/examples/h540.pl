% h540.json
% "In how many ways can 4 people be accommodated if there are 4 rooms available?"	256

group(people).
size(people,4).
group(rooms).
size(rooms,4).
count(sequences(accomodated, people, rooms)).