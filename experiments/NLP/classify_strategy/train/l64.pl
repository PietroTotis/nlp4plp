% L64: The drama school is getting ready for the play.  Since the play is an exercise in learning, a random drawing will take place to assign parts.  There 37 boys and 51 girls in the school.  There are 35 parts in the play for boys and 42 parts in the play for girls.  Donnie does n't want to be in the play because he is busy perfecting his dance moves.  What is the probability that he wo n't be in the play at all? ## Solution= 2/37

group(3-3).
size(3-3, 37).

given(exactly(35, 3-3, parts)).

take(3-3, 5-1, 1).

probability(none(5-1, parts)).

property(property, [parts]).

