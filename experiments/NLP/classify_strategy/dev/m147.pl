% M147: Marvin lives in Stormwind City and works as an engineer in the city of Ironforge.  In the morning, he has 3 transportation options: teleport, ride a dragon, or walk to work, and in the evening he has the same 3 choices for his trip home.  If Marvin randomly chooses his method of travel in the morning and in the evening, what is the probability that he teleports at least once per day? ## Solution= 5/9

group(2-9).
size(2-9, 3).

given(exactly(1, 2-9, walk)).
given(exactly(1, 2-9, teleport)).
given(exactly(1, 2-9, dragon)).

take_wr(2-9, 3-4, 2).


probability(atleast(1, 3-4, teleport)).

property(outcome(0), [teleport, walk, dragon]).

