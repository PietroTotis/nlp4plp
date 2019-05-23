% L468: An internet search engine looks for a certain keyword in a sequence of independent web sites.  It is believed that 20 percent of the sites contain this keyword.  Compute the probability that at least 5 of the first 10 websites contain the keyword. ## Solution= 0.0328

group(3-12).

given(exactly(rel(20/100,3-12), 3-12, keyword)).

take_wr(3-12, 3-13, 10).


probability(atleast(5, 3-13, keyword)).

property(property(0), [keyword]).

