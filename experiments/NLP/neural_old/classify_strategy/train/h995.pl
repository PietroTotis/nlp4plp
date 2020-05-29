% H995: Out of all Pokemon trainers worldwide, 55 percent are part of Team Valor, 35 percent are part of Team Mystic, and 10 percent are part of Team Instinct.  Only a select few trainers are currently in control of gyms.  There is a 0.4 probability that a Team Valor trainer controls a gym, 0.4 probability that a Team Mystic trainer controls a gym, and a probability of 0.2 that a Team Instinct trainer controls a gym.  Given that a chosen trainer currently controls a gym, what is the probability that the trainer is on Team Instinct? ## Solution= 0.052631579

group(1-5).

given(exactly(rel(10/100, 1-5), 1-5, instinct)).
given(exactly(rel(.2, 1-5, instinct), 1-5, and(gym, instinct))).
given(exactly(rel(.4, 1-5, mystic), 1-5, and(gym, mystic))).
given(exactly(rel(55/100, 1-5), 1-5, valor)).
given(exactly(rel(35/100, 1-5), 1-5, mystic)).
given(exactly(rel(.4, 1-5, valor), 1-5, and(gym, valor))).

take(1-5, 4-5, 1).
observe(all(4-5, gym)).

probability(all(4-5, instinct)).

property(property, [gym]).
property(team, [instinct, mystic, valor]).

