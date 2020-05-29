% L49: A computer retail store has 12 personal computers in stock.  A customer wants to purchase three of the computers.  Assume that of the 12 computers, 4 are defective.  If the computers are selected at random what is the probability that exactly one of the purchased computers is defective? ## Solution= 0.50909091

group(1-8).
size(1-8, 12).

given(exactly(4, 1-8, defective)).

take(1-8, 2-6, 3).

probability(exactly(1, 2-6, defective)).

property(property, [defective]).

