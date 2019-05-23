% L763: A party host gives a door prize to one guest chosen at random.  There are 48 men and 42 women at the party.  What is the probability that the prize goes to a woman? ## Solution= 7/15

group(people).

given(exactly(42, people, woman)).
given(exactly(48, people, man)).

take(people, 1-7, 1).

probability(all(1-7, woman)).

property(property, [woman, man]).

