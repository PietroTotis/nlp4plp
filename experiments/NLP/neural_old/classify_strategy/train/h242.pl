% H242: The output of a machine is graded excellent 70 percent of the time, good 20 percent of the time, and defective 10 percent of the time.  What is the probability a sample of size 15 has 10 excellent, 3 good, and 2 defective items? ## Solution= (15!/(10!*3!*2!))*(((0.7)^10)*((0.2)^3)*((0.1)^2))

group(1-2).

given(exactly(rel(70/100, 1-2), 1-2, excellent)).
given(exactly(rel(20/100, 1-2), 1-2, good)).
given(exactly(rel(10/100, 1-2), 1-2, defective)).

take(1-2, 2-6, 15).

probability(and(exactly(10, 2-6, excellent), and(exactly(3, 2-6, good), exactly(2, 2-6, defective)))).

property(property, [good, defective, excellent]).

