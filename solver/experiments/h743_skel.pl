
0.25::_lists_sw_p(take_wr(15,1-22,2-6),0.25,[0.75],fail,[none_of([fail])]).

_lists_sw(take_wr(15,1-22,2-6),1.0,[0.25, 0.75],[fail, none_of([fail])],fail,[none_of([fail])]) :- _lists_sw_p(take_wr(15,1-22,2-6),0.25,[0.75],fail,[none_of([fail])]).
_lists_sw(take_wr(15,1-22,2-6),1.0,[0.25, 0.75],[fail, none_of([fail])],none_of([fail]),[fail]) :- \+_lists_sw_p(take_wr(15,1-22,2-6),0.25,[0.75],fail,[none_of([fail])]).
_lists_select_weighted(take_wr(15,1-22,2-6),[0.25, 0.75],[fail, none_of([fail])],none_of([fail]),[fail]) :- _lists_sw(take_wr(15,1-22,2-6),1.0,[0.25, 0.75],[fail, none_of([fail])],none_of([fail]),[fail]).

_lists_select_weighted(take_wr(15,1-22,2-6),[(0.25, fail), (0.75, none_of([fail]))],none_of([fail]),[fail]) :- _lists_select_weighted(take_wr(15,1-22,2-6),[0.25, 0.75],[fail, none_of([fail])],none_of([fail]),[fail]).

select_uniform_ms(take_wr(15,1-22,2-6),[(0.25, fail), (0.75, none_of([fail]))],none_of([fail]),[(0.25, fail), (0.75, none_of([fail]))]) :- _lists_select_weighted(take_wr(15,1-22,2-6),[(0.25, fail), (0.75, none_of([fail]))],none_of([fail]),[fail]).

take_wr_nth(15,1-22,2-6,[(1, none_of([fail]))]) :- select_uniform_ms(take_wr(15,1-22,2-6),[(0.25, fail), (0.75, none_of([fail]))],none_of([fail]),[(0.25, fail), (0.75, none_of([fail]))]).

bn(take_wr(15,1-22,2-6),[(1, fail), (14, none_of([fail]))]) :- bn(take_wr(14,1-22,2-6),[(1, fail), (13, none_of([fail]))]), take_wr_nth(15,1-22,2-6,[(1, none_of([fail]))]).
bn(take_wr(15,1-22,2-6),[(1, fail), (14, none_of([fail]))]) :- bn(take_wr(14,1-22,2-6),[(14, none_of([fail]))]), take_wr_nth(15,1-22,2-6,[(1, fail)]).

bn(2-6,[(1, fail), (14, none_of([fail]))]) :- bn(take_wr(15,1-22,2-6),[(1, fail), (14, none_of([fail]))]).

sat(atmost(6,2-6,fail)) :- bn(2-6,[(6, fail), (9, none_of([fail]))]).
...
sat(atmost(6,2-6,fail)) :- bn(2-6,[(1, fail), (14, none_of([fail]))]).
sat(atmost(6,2-6,fail)) :- bn(2-6,[(15, none_of([fail]))]).

sat(atleast(3,2-6,fail)) :- bn(2-6,[(15, fail)]).
sat(atleast(3,2-6,fail)) :- bn(2-6,[(14, fail), (1, none_of([fail]))]).
...
sat(atleast(3,2-6,fail)) :- bn(2-6,[(3, fail), (12, none_of([fail]))]).

sat(and(atmost(6,2-6,fail),atleast(3,2-6,fail))) :- sat(atmost(6,2-6,fail)), sat(atleast(3,2-6,fail)).
query(sat(and(atmost(6,2-6,fail),atleast(3,2-6,fail)))).
