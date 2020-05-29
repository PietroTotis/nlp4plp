% h238.json
% "There are 37 students in a class.", "In how many ways can a professor give out 9 A 's, 13 B 's, 12 C 's, and 5 F 's?"	37!/(9!13!12!5!)

group(class).
size(class,37).
group(as).
size(as,9).
group(bs).
size(bs,13).
group(cs).
size(cs,12).
group(fs).
size(fs,5).
union(marks,[as,bs,cs,fs]).
count(sequences(gives,class,marks)).
