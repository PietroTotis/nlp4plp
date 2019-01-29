0.005::_lists_sw_p(take_wr(1,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
0.005::_lists_sw_p(take_wr(2,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
0.005::_lists_sw_p(take_wr(3,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
0.005::_lists_sw_p(take_wr(4,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
0.005::_lists_sw_p(take_wr(5,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
_lists_sw(take_wr(1,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- \+_lists_sw_p(take_wr(1,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
_lists_select_weighted(take_wr(1,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- _lists_sw(take_wr(1,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
_lists_select_weighted(take_wr(1,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]) :- _lists_select_weighted(take_wr(1,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
select_uniform_ms(take_wr(1,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]) :- _lists_select_weighted(take_wr(1,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]).
take_wr_nth(1,2-4,1-5,[(1, none_of([below]))]) :- select_uniform_ms(take_wr(1,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]).
bn(take_wr(1,2-4,1-5),[(1, none_of([below]))]) :- take_wr_nth(1,2-4,1-5,[(1, none_of([below]))]).
_lists_sw(take_wr(2,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- \+_lists_sw_p(take_wr(2,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
_lists_select_weighted(take_wr(2,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- _lists_sw(take_wr(2,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
_lists_select_weighted(take_wr(2,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]) :- _lists_select_weighted(take_wr(2,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
select_uniform_ms(take_wr(2,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]) :- _lists_select_weighted(take_wr(2,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]).
take_wr_nth(2,2-4,1-5,[(1, none_of([below]))]) :- select_uniform_ms(take_wr(2,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]).
bn(take_wr(2,2-4,1-5),[(2, none_of([below]))]) :- bn(take_wr(1,2-4,1-5),[(1, none_of([below]))]), take_wr_nth(2,2-4,1-5,[(1, none_of([below]))]).
_lists_sw(take_wr(3,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- \+_lists_sw_p(take_wr(3,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
_lists_select_weighted(take_wr(3,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- _lists_sw(take_wr(3,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
_lists_select_weighted(take_wr(3,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]) :- _lists_select_weighted(take_wr(3,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
select_uniform_ms(take_wr(3,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]) :- _lists_select_weighted(take_wr(3,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]).
take_wr_nth(3,2-4,1-5,[(1, none_of([below]))]) :- select_uniform_ms(take_wr(3,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]).
bn(take_wr(3,2-4,1-5),[(3, none_of([below]))]) :- bn(take_wr(2,2-4,1-5),[(2, none_of([below]))]), take_wr_nth(3,2-4,1-5,[(1, none_of([below]))]).
_lists_sw(take_wr(4,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- \+_lists_sw_p(take_wr(4,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
_lists_select_weighted(take_wr(4,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- _lists_sw(take_wr(4,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
_lists_select_weighted(take_wr(4,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]) :- _lists_select_weighted(take_wr(4,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
select_uniform_ms(take_wr(4,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]) :- _lists_select_weighted(take_wr(4,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]).
take_wr_nth(4,2-4,1-5,[(1, none_of([below]))]) :- select_uniform_ms(take_wr(4,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]).
bn(take_wr(4,2-4,1-5),[(4, none_of([below]))]) :- bn(take_wr(3,2-4,1-5),[(3, none_of([below]))]), take_wr_nth(4,2-4,1-5,[(1, none_of([below]))]).
_lists_sw(take_wr(5,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- \+_lists_sw_p(take_wr(5,2-4,1-5),0.005,[0.995],below,[none_of([below])]).
_lists_select_weighted(take_wr(5,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]) :- _lists_sw(take_wr(5,2-4,1-5),1.0,[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
_lists_select_weighted(take_wr(5,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]) :- _lists_select_weighted(take_wr(5,2-4,1-5),[0.005, 0.995],[below, none_of([below])],none_of([below]),[below]).
select_uniform_ms(take_wr(5,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]) :- _lists_select_weighted(take_wr(5,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[below]).
take_wr_nth(5,2-4,1-5,[(1, none_of([below]))]) :- select_uniform_ms(take_wr(5,2-4,1-5),[(0.005, below), (0.995, none_of([below]))],none_of([below]),[(0.005, below), (0.995, none_of([below]))]).
bn(take_wr(5,2-4,1-5),[(5, none_of([below]))]) :- bn(take_wr(4,2-4,1-5),[(4, none_of([below]))]), take_wr_nth(5,2-4,1-5,[(1, none_of([below]))]).
bn(1-5,[(5, none_of([below]))]) :- bn(take_wr(5,2-4,1-5),[(5, none_of([below]))]).
sat(all(1-5,not(below))) :- bn(1-5,[(5, none_of([below]))]).
query(sat(all(1-5,not(below)))).
