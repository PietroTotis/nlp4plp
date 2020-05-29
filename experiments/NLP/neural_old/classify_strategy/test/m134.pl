% M134: You 're playing a game where you defend your village from an orc invasion.  There are 3 characters: elf, hobbit, or human and 5 defense tools: magic, sword, shield, slingshot, or umbrella to pick from.  If you randomly choose your character and tool, what is the probability that you 'll be a magic elf? ## Solution= 1/15

group(2-15).
size(2-15, 5).

given(exactly(1, 2-15, shield)).
given(exactly(1, 2-15, sword)).
given(exactly(1, 2-15, magic)).
given(exactly(1, 2-15, slingshot)).
given(exactly(1, 2-15, umbrella)).
group(2-4).
size(2-4, 3).

given(exactly(1, 2-4, hobbit)).
given(exactly(1, 2-4, elf)).
given(exactly(1, 2-4, human)).

take_wr(2-4, 3-4-0, 1).
take_wr(2-15, 3-4-1, 1).
union(3-4, [3-4-0,3-4-1]).


probability(and(some(3-4, magic), some(3-4, elf))).

property(outcome(1), [umbrella, slingshot, magic, shield, sword]).
property(outcome(0), [elf, human, hobbit]).

