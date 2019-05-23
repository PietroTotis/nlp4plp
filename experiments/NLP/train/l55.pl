% l55 skip 0 55 	A company that specializes in language tutoring lists the following information concerning its English speaking employees: 23 speak German, 25 speak French, 31 speak Spanish, 43 speak Spanish or French, 38 speak French or German, 46 speak German or Spanish, 8 speak Spanish, French and German, and 7 office workers and secretaries speak English only. What percent of the employees speak at least one language other than English? 	## Solution= 56/63

group(people).
property(l1,[german]).
property(l2,[french]).
property(l3,[spanish]).
given(exactly(23,people,german)).
given(exactly(25,people,french)).
given(exactly(31,people,spanish)).
given(exactly(43,people,or(spanish,french))).
given(exactly(38,people,or(german,french))).
given(exactly(46,people,or(german,spanish))).
given(exactly(8,people,and(french,and(german,spanish)))).
given(exactly(7,people,not(or(french,or(spanish,german))))).
take(people,emp,1).
probability(all(emp,or(french,or(german,spanish)))).
