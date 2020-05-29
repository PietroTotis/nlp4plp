% L1125: Two masked robbers try to rob a crowded bank during the lunch hour but the teller presses a button that sets off an alarm and locks the front door.  The robbers realizing they are trapped, throw away their masks and disappear into the chaotic crowd.  Confronted with 40 people claiming they are innocent, the police gives everyone a lie detector test.  Suppose that guilty people are detected with probability 0.85 and innocent people appear to be guilty with probability 0.08.  What is the probability that Mr. Smith was one of the robbers given that the lie detector says he is? ## Solution= 0.358649789029536

group(3-4).
size(3-4, 40).

given(exactly(2, 3-4, guilty)).
given(exactly(rel(0.85, 3-4, guilty), 3-4, and(detect, guilty))).
given(exactly(rel(0.08, 3-4, innocent), 3-4, and(detect, innocent))).
given(exactly(38, 3-4, innocent)).

take(3-4, 5-7, 1).
observe(all(5-7, detect)).

probability(all(5-7, guilty)).

property(detector, [detect]).
property(guilt, [guilty, innocent]).

