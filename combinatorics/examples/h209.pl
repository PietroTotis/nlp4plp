% h209.json
% "In how many ways can we arrange in a line: three apples, four pears, and five bananas?"	9!/(3!4!5!)

group(apples).
size(apples,3).
group(pears).
size(pears,4).
group(bananas).
size(bananas,5).
union(fruit,[apples.pears,bananas]).
count(sequences(line,fruit,12)).