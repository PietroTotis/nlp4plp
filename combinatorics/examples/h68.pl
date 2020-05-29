% h68.json
% "Four people are to be arranged in a row to have their picture taken.", "In how many ways can this be done?"	24 

group(people).
size(people,4).
count(sequences(picture,people,4)).