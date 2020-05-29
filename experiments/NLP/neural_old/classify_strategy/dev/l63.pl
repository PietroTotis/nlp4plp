% L63: The drama school is getting ready for the play.  Since the play is an exercise in learning, a random drawing will take place to assign parts.  There are 37 boys and 51 girls in the school.  There are 35 parts in the play for boys and 42 parts in the play for girls.  Dominique is hoping for the female lead role.  5 female roles have been chosen and the lead female role is still available.  What is probability that Dominique will land the role now? ## Solution= 1/46

group(3-7).
size(3-7, 51).

group(rest(6-3)).

given(exactly(1, 3-7, lead)).

take(rest(6-3), 5-1, 1).
take(3-7, 6-3, 5).
observe(none(6-3, lead)).

probability(all(5-1, lead)).

property(position, [lead]).

