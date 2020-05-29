% H193: You are going to play 2 games of chess with an opponent whom you have never played against before.  Your opponent is equally likely to be a beginner, intermediate, or a master.  Depending on which, your chances of winning an individual game are 90 percent, 50 percent, or 30 percent, respectively.  What is the probability that you win your first game? ## Solution= 17/30

group(2-2).

given(exactly(rel(30/100, 2-2, master), 2-2, and(master, win))).
given(exactly(rel(50/100, 2-2, intermediate), 2-2, and(intermediate, win))).
given(exactly(rel(1/3, 2-2), 2-2, master)).
given(exactly(rel(1/3, 2-2), 2-2, intermediate)).
given(exactly(rel(1/3, 2-2), 2-2, beginner)).
given(exactly(rel(90/100, 2-2, beginner), 2-2, and(beginner, win))).

take(2-2, 4-10, 1).

probability(all(4-10, win)).

property(outcome, [win]).
property(level, [intermediate, master, beginner]).

