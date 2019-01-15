0.166666666666667::_lists_sw_p(take_wr(1,die,rolls),0.166666666666667,[1, 1, 1, 1, 1],one,[two, three, four, five, six]).
0.2::_lists_sw_p(take_wr(1,die,rolls),0.2,[1, 1, 1, 1],two,[three, four, five, six]).
0.25::_lists_sw_p(take_wr(1,die,rolls),0.25,[1, 1, 1],three,[four, five, six]).
0.333333333333333::_lists_sw_p(take_wr(1,die,rolls),0.333333333333333,[1, 1],four,[five, six]).
0.5::_lists_sw_p(take_wr(1,die,rolls),0.5,[1],five,[six]).
0.166666666666667::_lists_sw_p(take_wr(2,die,rolls),0.166666666666667,[1, 1, 1, 1, 1],one,[two, three, four, five, six]).
0.2::_lists_sw_p(take_wr(2,die,rolls),0.2,[1, 1, 1, 1],two,[three, four, five, six]).
0.25::_lists_sw_p(take_wr(2,die,rolls),0.25,[1, 1, 1],three,[four, five, six]).
0.333333333333333::_lists_sw_p(take_wr(2,die,rolls),0.333333333333333,[1, 1],four,[five, six]).
0.5::_lists_sw_p(take_wr(2,die,rolls),0.5,[1],five,[six]).
_lists_sw(take_wr(1,die,rolls),2,[1, 1],[five, six],five,[six]) :- _lists_sw_p(take_wr(1,die,rolls),0.5,[1],five,[six]).
_lists_sw(take_wr(1,die,rolls),3,[1, 1, 1],[four, five, six],five,[four, six]) :- \+_lists_sw_p(take_wr(1,die,rolls),0.333333333333333,[1, 1],four,[five, six]), _lists_sw(take_wr(1,die,rolls),2,[1, 1],[five, six],five,[six]).
_lists_sw(take_wr(1,die,rolls),4,[1, 1, 1, 1],[three, four, five, six],five,[three, four, six]) :- \+_lists_sw_p(take_wr(1,die,rolls),0.25,[1, 1, 1],three,[four, five, six]), _lists_sw(take_wr(1,die,rolls),3,[1, 1, 1],[four, five, six],five,[four, six]).
_lists_sw(take_wr(1,die,rolls),5,[1, 1, 1, 1, 1],[two, three, four, five, six],five,[two, three, four, six]) :- \+_lists_sw_p(take_wr(1,die,rolls),0.2,[1, 1, 1, 1],two,[three, four, five, six]), _lists_sw(take_wr(1,die,rolls),4,[1, 1, 1, 1],[three, four, five, six],five,[three, four, six]).
_lists_sw(take_wr(1,die,rolls),6,[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],five,[one, two, three, four, six]) :- \+_lists_sw_p(take_wr(1,die,rolls),0.166666666666667,[1, 1, 1, 1, 1],one,[two, three, four, five, six]), _lists_sw(take_wr(1,die,rolls),5,[1, 1, 1, 1, 1],[two, three, four, five, six],five,[two, three, four, six]).
_lists_select_weighted(take_wr(1,die,rolls),[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],five,[one, two, three, four, six]) :- _lists_sw(take_wr(1,die,rolls),6,[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],five,[one, two, three, four, six]).
_lists_select_weighted(take_wr(1,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],five,[one, two, three, four, six]) :- _lists_select_weighted(take_wr(1,die,rolls),[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],five,[one, two, three, four, six]).
select_uniform_ms(take_wr(1,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],five,[(1, one), (1, two), (1, three), (1, four), (1, six)]) :- _lists_select_weighted(take_wr(1,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],five,[one, two, three, four, six]).
take_wr_nth(1,die,rolls,true,true,[(1, five)]) :- select_uniform_ms(take_wr(1,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],five,[(1, one), (1, two), (1, three), (1, four), (1, six)]).
bn(nth(1,rolls),all(five),all(five),[(1, five)]) :- take_wr_nth(1,die,rolls,true,true,[(1, five)]).
bn(nth(1,rolls),all(five)) :- bn(nth(1,rolls),all(five),all(five),[(1, five)]).
sat(all(nth(1,rolls),five)) :- bn(nth(1,rolls),all(five)).
sat(nth(1,rolls,five)) :- sat(all(nth(1,rolls),five)).
_lists_sw(take_wr(2,die,rolls),2,[1, 1],[five, six],six,[five]) :- \+_lists_sw_p(take_wr(2,die,rolls),0.5,[1],five,[six]).
_lists_sw(take_wr(2,die,rolls),3,[1, 1, 1],[four, five, six],six,[four, five]) :- \+_lists_sw_p(take_wr(2,die,rolls),0.333333333333333,[1, 1],four,[five, six]), _lists_sw(take_wr(2,die,rolls),2,[1, 1],[five, six],six,[five]).
_lists_sw(take_wr(2,die,rolls),4,[1, 1, 1, 1],[three, four, five, six],six,[three, four, five]) :- \+_lists_sw_p(take_wr(2,die,rolls),0.25,[1, 1, 1],three,[four, five, six]), _lists_sw(take_wr(2,die,rolls),3,[1, 1, 1],[four, five, six],six,[four, five]).
_lists_sw(take_wr(2,die,rolls),5,[1, 1, 1, 1, 1],[two, three, four, five, six],six,[two, three, four, five]) :- \+_lists_sw_p(take_wr(2,die,rolls),0.2,[1, 1, 1, 1],two,[three, four, five, six]), _lists_sw(take_wr(2,die,rolls),4,[1, 1, 1, 1],[three, four, five, six],six,[three, four, five]).
_lists_sw(take_wr(2,die,rolls),6,[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],six,[one, two, three, four, five]) :- \+_lists_sw_p(take_wr(2,die,rolls),0.166666666666667,[1, 1, 1, 1, 1],one,[two, three, four, five, six]), _lists_sw(take_wr(2,die,rolls),5,[1, 1, 1, 1, 1],[two, three, four, five, six],six,[two, three, four, five]).
_lists_select_weighted(take_wr(2,die,rolls),[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],six,[one, two, three, four, five]) :- _lists_sw(take_wr(2,die,rolls),6,[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],six,[one, two, three, four, five]).
_lists_select_weighted(take_wr(2,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],six,[one, two, three, four, five]) :- _lists_select_weighted(take_wr(2,die,rolls),[1, 1, 1, 1, 1, 1],[one, two, three, four, five, six],six,[one, two, three, four, five]).
select_uniform_ms(take_wr(2,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],six,[(1, one), (1, two), (1, three), (1, four), (1, five)]) :- _lists_select_weighted(take_wr(2,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],six,[one, two, three, four, five]).
take_wr_nth(2,die,rolls,true,true,[(1, six)]) :- select_uniform_ms(take_wr(2,die,rolls),[(1, one), (1, two), (1, three), (1, four), (1, five), (1, six)],six,[(1, one), (1, two), (1, three), (1, four), (1, five)]).
bn(nth(2,rolls),all(six),all(six),[(1, six)]) :- take_wr_nth(2,die,rolls,true,true,[(1, six)]).
bn(nth(2,rolls),all(six)) :- bn(nth(2,rolls),all(six),all(six),[(1, six)]).
sat(all(nth(2,rolls),six)) :- bn(nth(2,rolls),all(six)).
sat(nth(2,rolls,six)) :- sat(all(nth(2,rolls),six)).
sat(and(nth(1,rolls,five),nth(2,rolls,six))) :- sat(nth(1,rolls,five)), sat(nth(2,rolls,six)).
query(sat(and(nth(1,rolls,five),nth(2,rolls,six)))).
