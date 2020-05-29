% h315.json
% "If 2 students are to be selected from a group of 12 students, how many possible consequences are there?"	66

group(students).
size(students,12).
count(subsets(select,students,2)).