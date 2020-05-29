% L715: In a survey conducted at a local restaurant during breakfast hours, 20 people preferred orange juice, 16 preferred grapefruit juice, and 9 preferred apple juice with breakfast.  If a person is selected at random, find the probability that she or he prefers grapefruit juice. ## Solution= 16/45

group(people).

given(exactly(16, people, grapefruit)).
given(exactly(9, people, apple)).
given(exactly(20, people, orange)).

take(people, 2-3, 1).

probability(all(2-3, grapefruit)).

property(property, [orange, grapefruit, apple]).

