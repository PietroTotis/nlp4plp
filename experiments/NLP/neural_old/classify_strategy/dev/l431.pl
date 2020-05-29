% L431: Mr. Parietti needs two students to help him with a science demonstration for his class of 18 girls and 12 boys.  He randomly chooses one student who comes to the front of the room.  He then chooses a second student from those still seated.  What is the probability that both students chosen are girls? ## Solution= 51/145

group(1-15).

given(exactly(12, 1-15, boy)).
given(exactly(18, 1-15, girl)).

take(1-15, 1-5, 2).

probability(all(1-5, girl)).

property(property, [boy, girl]).

