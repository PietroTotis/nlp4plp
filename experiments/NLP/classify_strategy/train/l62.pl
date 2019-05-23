% L62: The drama school is getting ready for the play.  Since the play is an exercise in learning, a random drawing will take place to assign parts.  There are 37 boys and 51 girls in the school.  There are 35 parts in the play for boys and 42 parts in the play for girls.  Dominique is hoping for the female lead role.  What is the possibility that she will get the lead if it is the first role cast? ## Solution= 1/51

group(3-7).
size(3-7, 51).

given(exactly(1, 3-7, lead)).

take(3-7, 5-1, 1).

probability(all(5-1, lead)).

property(role, [lead]).

