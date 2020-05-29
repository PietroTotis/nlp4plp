% h46.json
% "A teacher is to be assigned to teach 5 different courses in 5 different class periods on Mondays.", "If exactly one course meets each period, how many different assignments of courses to these class periods are possible for Mondays?"	120

group(courses).
size(courses,5).
count(sequences(assignment,courses,5)).