% L627: A bag contains 80 balls numbered 1, ..., 80.  Before the game starts, you choose 10 different numbers from amongst 1, ..., 80 and write them on a piece of paper.  Then 20 balls are selected, without replacement, out of the bag at random.  What is the probability that exactly 4 of your numbers are selected? ## Solution= C(10,4)*C(70,16)/C(80,20)

group(1-2).
size(1-2, 80).

given(exactly(10, 1-2, numbers)).

take(1-2, 3-3, 20).

probability(exactly(4, 3-3, numbers)).

property(property, [numbers]).

