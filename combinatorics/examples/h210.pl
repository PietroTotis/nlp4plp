% h210.json
% "In how many ways can we arrange in a line, two apples, six pears, three bananas, and two plums?"	13!/(2!6!3!2!)

group(apples).
size(apples,2).
group(pears).
size(pears,6).
group(bananas).
size(bananas,3).
group(plums).
size(plums,2).
union(fruit,[apples.pears,bananas,plums]).
count(sequences(line,fruit,13)).