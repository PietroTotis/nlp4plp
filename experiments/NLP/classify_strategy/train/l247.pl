% L247: In a certain university, the proportion of full, associate, and assistant professors, and of lecturers is 30 percent, 40 percent, 20 percent, and 10 percent respectively, of which 60 percent, 70 percent, 90 percent, and 40 percent hold a PhD.  What is the probability that a person taken at random among those teaching at this university holds a PhD? ## Solution= 0.68

group(1-4).

given(exactly(rel(70/100, 1-4, associate), 1-4, and(associate, phd))).
given(exactly(rel(30/100, 1-4), 1-4, full)).
given(exactly(rel(90/100, 1-4, assistant), 1-4, and(assistant, phd))).
given(exactly(rel(40/100, 1-4), 1-4, associate)).
given(exactly(rel(40/100, 1-4, lecturer), 1-4, and(lecturer, phd))).
given(exactly(rel(60/100, 1-4, full), 1-4, and(full, phd))).
given(exactly(rel(20/100, 1-4), 1-4, assistant)).
given(exactly(rel(10/100, 1-4), 1-4, lecturer)).

take(1-4, 2-7, 1).

probability(all(2-7, phd)).

property(type, [lecturer, assistant, full, associate]).
property(phd, [phd]).

