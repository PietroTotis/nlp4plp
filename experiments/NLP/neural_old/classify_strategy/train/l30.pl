% L30: There are three pink pencils, two blue pencils, and one green pencil.  If one pencil is picked randomly, what is the theoretical probability it will be blue? ## Solution= 1/3

group(pencils).

given(exactly(2, pencils, blue)).
given(exactly(3, pencils, pink)).
given(exactly(1, pencils, green)).

take(pencils, 2-3, 1).

probability(all(2-3, blue)).

property(color, [blue, pink, green]).

