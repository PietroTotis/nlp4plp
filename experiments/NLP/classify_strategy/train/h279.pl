% H279: Messi will either dribble then shoot, pass to a teammate who will then immediately shoot, or shoot the ball immediately upon receiving the ball.  The chances that Barca will score on each given offensive choice are 0.08, 0.05, and 0.04 respectively.  What are the chances Messi shoots the ball immediately upon receiving the ball and scores? ## Solution= 0.013333333

group(1-1).

given(exactly(rel(0.04, 1-1, shoot), 1-1, and(score, shoot))).
given(exactly(rel(1/3, 1-1), 1-1, pass)).
given(exactly(rel(0.08, 1-1, dribble), 1-1, and(dribble, score))).
given(exactly(rel(1/3, 1-1), 1-1, shoot)).
given(exactly(rel(0.05, 1-1, pass), 1-1, and(pass, score))).
given(exactly(rel(1/3, 1-1), 1-1, dribble)).

take(1-1, 3-5, 1).

probability(all(3-5, and(shoot, score))).

property(action, [shoot, dribble, pass]).
property(result, [score]).

