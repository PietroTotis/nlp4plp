% H684: An incoming lot of silicon wafers is to be inspected for defective ones by an engineer in a microchip manufacturing plant.  Suppose that in a tray containing 20 wafers 4 are defective.  Two wafers are to be selected randomly for inspection.  Find the probability that at least one of the two is defective. ## Solution= 0.36842105

group(2-5).
size(2-5, 20).

given(exactly(4, 2-5, defective)).

take(2-5, 3-2, 2).

probability(atleast(1, 3-2, defective)).

property(property, [defective]).

