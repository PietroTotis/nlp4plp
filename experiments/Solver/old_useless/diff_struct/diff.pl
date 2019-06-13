0.3::ev1.
0.3::ev2.
0.3::ev3.
0.3::ev4.
0.3::ev5.

atleast3 :- ev1, ev2, ev3, ev4, ev5.
atleast3 :- ev1, ev2, ev3, ev4, \+ev5.
atleast3 :- ev1, ev2, ev3, \+ev4, ev5.
atleast3 :- ev1, ev2, \+ev3, ev4, ev5.
atleast3 :- ev1, \+ev2, ev3, ev4, ev5.
atleast3 :- \+ev1, ev2, ev3, ev4, ev5.
atleast3 :- ev1, ev2, ev3, \+ev4, \+ev5.
atleast3 :- ev1, ev2, \+ev3, ev4, \+ev5.
atleast3 :- ev1, \+ev2, ev3, ev4, \+ev5.
atleast3 :- \+ev1, ev2, ev3, ev4, \+ev5.
atleast3 :- ev1, ev2, \+ev3, \+ev4, ev5.
atleast3 :- ev1, \+ev2, ev3, \+ev4, ev5.
atleast3 :- \+ev1, ev2, ev3, \+ev4, ev5.
atleast3 :- ev1, \+ev2, \+ev3, ev4, ev5.
atleast3 :- \+ev1, \+ev2, ev3, ev4, ev5.
atleast3 :- \+ev1, ev2, \+ev3, ev4, ev5.


query(atleast3).
