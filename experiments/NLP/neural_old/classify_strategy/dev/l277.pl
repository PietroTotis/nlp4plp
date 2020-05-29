% L277: The probability that a computer salesperson will make a sale when approaching a customer is 1/2.  If the salesperson approaches 12 customers, what is the probability that 8 sales will be made? ## Solution= 495/4096

group(1-14).
size(1-14, 2).

given(exactly(1, 1-14, sale)).
given(exactly(1, 1-14, v(1-14,0))).

take_wr(1-14, 2-4, 12).


probability(exactly(8, 2-4, sale)).

property(outcome(0), [v(1-14,0), sale]).

