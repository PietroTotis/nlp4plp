% H859: Suppose that 75 percent of all people with credit records improve their credit ratings within three years.  Suppose that 18 percent of the population at large have poor credit records, and of those only 30 percent will improve their credit ratings within three years.  What percentage of the people who will improve their credit records within the next three years are the ones who currently have good credit ratings? ## Solution= 0.928

group(2-7).

given(exactly(rel(30/100, 2-7, poor), 2-7, and(improve, poor))).
given(exactly(rel(75/100, 2-7), 2-7, improve)).
given(exactly(rel(18/100, 2-7), 2-7, poor)).

take(2-7, 3-2, 1).
observe(all(3-2, improve)).

probability(all(3-2, good)).

property(rating, [poor, good]).
property(improve, [improve]).

