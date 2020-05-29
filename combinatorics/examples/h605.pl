% h605.json
% "An urn has 2 white marbles, 3 red marbles, and 5 blue marbles.", "Marbles are drawn one by one and without replacement.", "Urns of each colour are indistinguishable.", "In how many ways may one draw the marbles out of the urn?"	(10!)/(2!*3!*5!)


group(white).
size(white,2).
group(red).
size(red,3).
group(blue).
size(blue,5).
union(marbles,[white,red,blue].
sequences(way,marbles).