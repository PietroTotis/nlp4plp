% H795: Suppose 2 percent of cotton fabric rolls and 3 percent of nylon fabric rolls contain flaws.  Of the rolls used by a manufacturer, 70 percent are cotton and 30 percent are nylon.  What is the probability that a randomly selected roll used by the manufacturer contains flaws? ## Solution= .023

group(2-3).

given(exactly(rel(3/100, 2-3, nylon), 2-3, and(flaw, nylon))).
given(exactly(rel(30/100, 2-3), 2-3, nylon)).
given(exactly(rel(2/100, 2-3, cotton), 2-3, and(cotton, flaw))).
given(exactly(rel(70/100, 2-3), 2-3, cotton)).

take(2-3, 3-9, 1).

probability(all(3-9, flaw)).

property(flaw, [flaw]).
property(material, [nylon, cotton]).

