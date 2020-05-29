% L823: Of the students in a college, it is known that 60 percent reside in hostel and 40 percent are day scholars, not residing in hostel.  Previous year results report that 30 percent of all students who reside in hostel attain A grade and 20 percent of day scholars attain A grade in their annual examination.  At the end of the year, one student is chosen at random from the college and he has an A grade, what is the probability that the student is hostler? ## Solution= 9/13

group(1-3).

given(exactly(rel(60/100, 1-3), 1-3, hostel)).
given(exactly(rel(40/100, 1-3), 1-3, scholar)).
given(exactly(rel(30/100, 1-3, hostel), 1-3, and(a, hostel))).
given(exactly(rel(20/100, 1-3, scholar), 1-3, and(a, scholar))).

take(1-3, 3-9, 1).
observe(all(3-9, a)).

probability(all(3-9, hostel)).

property(grade, [a]).
property(residence, [scholar, hostel]).

