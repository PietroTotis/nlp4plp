% h147.json
% "In how many ways can a man divide 7 gifts among his 3 children if the eldest is to receive 3 gifts and the others 2 each?"	210

group(gifts).
size(gifts,7).
count(partitions(children,gifts,3)).
observe(children,exactly(1,3)).
observe(children,exactly(2,2)).