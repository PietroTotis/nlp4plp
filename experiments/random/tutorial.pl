group(die).
size(die, 6).

static_instance(die,[1-one,1-two,1-three,1-four,1-five,1-six]).

given(exactly(1, die, one)).
given(exactly(1, die, two)).
given(exactly(1, die, three)).
given(exactly(1, die, four)).
given(exactly(1, die, five)).
given(exactly(1, die, six)).

take_wr(die, rolls, 20).

probability(and(nth(1, rolls, five), nth(2, rolls, six))).

property(outcome(0), [one, two, three, four, five, six]).


root_ms(die,[one,two,three,four,five,six]).
setup_ms(die,[(1,one),(1,two),(1,three),(1,four),(1,five),(1,six)]).
compressed_root(die,[1-one,1-two,1-three,1-four,1-five,1-six]).
root_ms_compressed(die,[one,two,three,four,five,six]).
setup_ms_compressed(die,[(1,one),(1,two),(1,three),(1,four),(1,five),(1,six)]).
