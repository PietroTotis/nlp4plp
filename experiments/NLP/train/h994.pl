% H994: Some Pokemon trainers are not good at catching Pokemon.  30 percent of trainers need 5 or more pokeballs to catch a pokemon, 20 percent of trainers need 4 pokeballs to catch a pokemon, and 50 percent of trainers are more skilled and only need 3 or less.  What are the chances that a Pokemon trainer will catch a pokemon given that they have only 3 pokeballs in their bag? ## Solution= .5

group(1-3).

given(exactly(rel(20/100, 1-3), 1-3, 4)).
given(exactly(rel(30/100, 1-3), 1-3, 5)).
given(exactly(rel(50/100, 1-3), 1-3, 3)).

take(1-3, 3-8, 1).

probability(all(3-8, 3)).

property(pokeballs, [3, 5, 4]).

