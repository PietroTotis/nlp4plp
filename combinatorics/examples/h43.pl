% h43.json
% "The Acme Plumbing Company will send a team of 3 plumbers to work on a certain job.", "The company has 4 experienced plumbers and 4 trainees.", "If a team consists of 1 experienced plumber and 2 trainees, how many different such teams are possible?"	24

group(experienced).
size(experienced,4).
group(trainees).
size(trainees,4).
union(employees,[experienced,trainees]).
count(subsets(team,employees,3)).
observe(team,and(exactly(1,experienced),exactly(2,trainees))).