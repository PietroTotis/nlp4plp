num(one).
num(two).
num(three).
num(four).
num(five).
num(six).
0.166666666666667::roll(X):-num(X).
sat(nth(1,rolls,five)) :- roll(five).
sat(nth(2,rolls,six)) :- roll(six).
sat(nth(2,rolls,six)) :- sat(all(nth(2,rolls),six)).
sat(and(nth(1,rolls,five),nth(2,rolls,six))) :- sat(nth(1,rolls,five)), sat(nth(2,rolls,six)).
query(sat(and(nth(1,rolls,five),nth(2,rolls,six)))).

root_ms(die,[one,two,three,four,five,six]).
setup_ms(die,[(1,one),(1,two),(1,three),(1,four),(1,five),(1,six)]).
compressed_root(die,[1-one,1-two,1-three,1-four,1-five,1-six]).
root_ms_compressed(die,[one,two,three,four,five,six]).
setup_ms_compressed(die,[(1,one),(1,two),(1,three),(1,four),(1,five),(1,six)]).
