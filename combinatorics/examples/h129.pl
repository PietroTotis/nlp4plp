% h129.json
% "In how many ways can 6 students be seated in a classroom with 30 desks?"	30*29*28*27*26*25

group(students).
size(students,6).
group(desks).
size(desks,30).
count(sequences(seat,desks,6)).