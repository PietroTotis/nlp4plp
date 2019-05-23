% H760: A government task force suspects that some manufacturing companies are in violation of federal pollution regulations with regard to dumping a certain type of product.  Twenty firms are under suspicion but all can not be inspected.  Suppose that 3 of the firms are in violation.  What is the probability that inspection of 5 firms finds no violations? ## Solution= 0.39912281

group(2-2).
size(2-2, 20).

given(exactly(3, 2-2, violation)).

take(2-2, 4-9, 5).

probability(none(4-9, violation)).

property(property, [violation]).

