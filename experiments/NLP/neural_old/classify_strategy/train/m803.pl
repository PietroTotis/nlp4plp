% M803: The Florida Tourist Commission estimates that the probabilities that a person visiting Florida will visit Disney World, Busch Gardens, or both are 0.5, 0.3 and 0.2 respectively.  What is the probability that a person visiting Florida will visit Disney World or Busch Gardens? ## Solution= 0.6

group(1-11).

given(exactly(rel(0.3, 1-11), 1-11, garden)).
given(exactly(rel(0.2, 1-11), 1-11, and(garden, world))).
given(exactly(rel(0.5, 1-11), 1-11, world)).

take(1-11, 2-7, 1).

probability(all(2-7, or(world, garden))).

property(world, [world]).
property(gardens, [garden]).

