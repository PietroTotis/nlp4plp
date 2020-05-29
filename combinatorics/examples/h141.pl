% h141.json
% "Consider a group of 20 people.", "If everyone shakes hands with everyone else, how many handshakes take place?"	190

group(people).
size(people,20).
count(subsets(handshake,people,2)).