0.5::_lists_sw_p(take_wr(1,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(2,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(3,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(4,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(5,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(6,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(7,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(8,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(9,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(10,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(11,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(12,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(13,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(14,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(15,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(16,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(17,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(18,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(19,dom,out),0.5,[1],head,[tails]).
0.5::_lists_sw_p(take_wr(20,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(1,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(1,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(1,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(1,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(1,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(1,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(1,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(1,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(1,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(1,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(1,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(1,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(1,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(1,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(1,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(1,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(1,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(1,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(1,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(1,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(1,dom,out),[(1, head)]) :- take_wr_nth(1,dom,out,[(1, head)]).
bn(take_wr(1,dom,out),[(1, tails)]) :- take_wr_nth(1,dom,out,[(1, tails)]).
_lists_sw(take_wr(2,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(2,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(2,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(2,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(2,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(2,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(2,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(2,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(2,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(2,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(2,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(2,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(2,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(2,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(2,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(2,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(2,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(2,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(2,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(2,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(2,dom,out),[(2, head)]) :- bn(take_wr(1,dom,out),[(1, head)]), take_wr_nth(2,dom,out,[(1, head)]).
bn(take_wr(2,dom,out),[(2, tails)]) :- bn(take_wr(1,dom,out),[(1, tails)]), take_wr_nth(2,dom,out,[(1, tails)]).
bn(take_wr(2,dom,out),[(1, head), (1, tails)]) :- bn(take_wr(1,dom,out),[(1, head)]), take_wr_nth(2,dom,out,[(1, tails)]).
bn(take_wr(2,dom,out),[(1, head), (1, tails)]) :- bn(take_wr(1,dom,out),[(1, tails)]), take_wr_nth(2,dom,out,[(1, head)]).
_lists_sw(take_wr(3,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(3,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(3,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(3,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(3,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(3,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(3,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(3,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(3,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(3,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(3,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(3,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(3,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(3,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(3,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(3,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(3,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(3,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(3,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(3,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(3,dom,out),[(3, head)]) :- bn(take_wr(2,dom,out),[(2, head)]), take_wr_nth(3,dom,out,[(1, head)]).
bn(take_wr(3,dom,out),[(3, tails)]) :- bn(take_wr(2,dom,out),[(2, tails)]), take_wr_nth(3,dom,out,[(1, tails)]).
bn(take_wr(3,dom,out),[(2, head), (1, tails)]) :- bn(take_wr(2,dom,out),[(2, head)]), take_wr_nth(3,dom,out,[(1, tails)]).
bn(take_wr(3,dom,out),[(2, head), (1, tails)]) :- bn(take_wr(2,dom,out),[(1, head), (1, tails)]), take_wr_nth(3,dom,out,[(1, head)]).
bn(take_wr(3,dom,out),[(1, head), (2, tails)]) :- bn(take_wr(2,dom,out),[(1, head), (1, tails)]), take_wr_nth(3,dom,out,[(1, tails)]).
bn(take_wr(3,dom,out),[(1, head), (2, tails)]) :- bn(take_wr(2,dom,out),[(2, tails)]), take_wr_nth(3,dom,out,[(1, head)]).
_lists_sw(take_wr(4,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(4,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(4,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(4,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(4,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(4,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(4,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(4,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(4,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(4,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(4,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(4,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(4,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(4,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(4,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(4,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(4,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(4,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(4,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(4,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(4,dom,out),[(4, head)]) :- bn(take_wr(3,dom,out),[(3, head)]), take_wr_nth(4,dom,out,[(1, head)]).
bn(take_wr(4,dom,out),[(4, tails)]) :- bn(take_wr(3,dom,out),[(3, tails)]), take_wr_nth(4,dom,out,[(1, tails)]).
bn(take_wr(4,dom,out),[(3, head), (1, tails)]) :- bn(take_wr(3,dom,out),[(3, head)]), take_wr_nth(4,dom,out,[(1, tails)]).
bn(take_wr(4,dom,out),[(3, head), (1, tails)]) :- bn(take_wr(3,dom,out),[(2, head), (1, tails)]), take_wr_nth(4,dom,out,[(1, head)]).
bn(take_wr(4,dom,out),[(2, head), (2, tails)]) :- bn(take_wr(3,dom,out),[(2, head), (1, tails)]), take_wr_nth(4,dom,out,[(1, tails)]).
bn(take_wr(4,dom,out),[(2, head), (2, tails)]) :- bn(take_wr(3,dom,out),[(1, head), (2, tails)]), take_wr_nth(4,dom,out,[(1, head)]).
bn(take_wr(4,dom,out),[(1, head), (3, tails)]) :- bn(take_wr(3,dom,out),[(1, head), (2, tails)]), take_wr_nth(4,dom,out,[(1, tails)]).
bn(take_wr(4,dom,out),[(1, head), (3, tails)]) :- bn(take_wr(3,dom,out),[(3, tails)]), take_wr_nth(4,dom,out,[(1, head)]).
_lists_sw(take_wr(5,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(5,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(5,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(5,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(5,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(5,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(5,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(5,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(5,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(5,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(5,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(5,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(5,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(5,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(5,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(5,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(5,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(5,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(5,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(5,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(5,dom,out),[(5, head)]) :- bn(take_wr(4,dom,out),[(4, head)]), take_wr_nth(5,dom,out,[(1, head)]).
bn(take_wr(5,dom,out),[(5, tails)]) :- bn(take_wr(4,dom,out),[(4, tails)]), take_wr_nth(5,dom,out,[(1, tails)]).
bn(take_wr(5,dom,out),[(4, head), (1, tails)]) :- bn(take_wr(4,dom,out),[(4, head)]), take_wr_nth(5,dom,out,[(1, tails)]).
bn(take_wr(5,dom,out),[(4, head), (1, tails)]) :- bn(take_wr(4,dom,out),[(3, head), (1, tails)]), take_wr_nth(5,dom,out,[(1, head)]).
bn(take_wr(5,dom,out),[(3, head), (2, tails)]) :- bn(take_wr(4,dom,out),[(3, head), (1, tails)]), take_wr_nth(5,dom,out,[(1, tails)]).
bn(take_wr(5,dom,out),[(3, head), (2, tails)]) :- bn(take_wr(4,dom,out),[(2, head), (2, tails)]), take_wr_nth(5,dom,out,[(1, head)]).
bn(take_wr(5,dom,out),[(2, head), (3, tails)]) :- bn(take_wr(4,dom,out),[(2, head), (2, tails)]), take_wr_nth(5,dom,out,[(1, tails)]).
bn(take_wr(5,dom,out),[(2, head), (3, tails)]) :- bn(take_wr(4,dom,out),[(1, head), (3, tails)]), take_wr_nth(5,dom,out,[(1, head)]).
bn(take_wr(5,dom,out),[(1, head), (4, tails)]) :- bn(take_wr(4,dom,out),[(1, head), (3, tails)]), take_wr_nth(5,dom,out,[(1, tails)]).
bn(take_wr(5,dom,out),[(1, head), (4, tails)]) :- bn(take_wr(4,dom,out),[(4, tails)]), take_wr_nth(5,dom,out,[(1, head)]).
_lists_sw(take_wr(6,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(6,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(6,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(6,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(6,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(6,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(6,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(6,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(6,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(6,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(6,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(6,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(6,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(6,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(6,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(6,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(6,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(6,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(6,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(6,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(6,dom,out),[(6, head)]) :- bn(take_wr(5,dom,out),[(5, head)]), take_wr_nth(6,dom,out,[(1, head)]).
bn(take_wr(6,dom,out),[(6, tails)]) :- bn(take_wr(5,dom,out),[(5, tails)]), take_wr_nth(6,dom,out,[(1, tails)]).
bn(take_wr(6,dom,out),[(5, head), (1, tails)]) :- bn(take_wr(5,dom,out),[(5, head)]), take_wr_nth(6,dom,out,[(1, tails)]).
bn(take_wr(6,dom,out),[(5, head), (1, tails)]) :- bn(take_wr(5,dom,out),[(4, head), (1, tails)]), take_wr_nth(6,dom,out,[(1, head)]).
bn(take_wr(6,dom,out),[(4, head), (2, tails)]) :- bn(take_wr(5,dom,out),[(4, head), (1, tails)]), take_wr_nth(6,dom,out,[(1, tails)]).
bn(take_wr(6,dom,out),[(4, head), (2, tails)]) :- bn(take_wr(5,dom,out),[(3, head), (2, tails)]), take_wr_nth(6,dom,out,[(1, head)]).
bn(take_wr(6,dom,out),[(3, head), (3, tails)]) :- bn(take_wr(5,dom,out),[(3, head), (2, tails)]), take_wr_nth(6,dom,out,[(1, tails)]).
bn(take_wr(6,dom,out),[(3, head), (3, tails)]) :- bn(take_wr(5,dom,out),[(2, head), (3, tails)]), take_wr_nth(6,dom,out,[(1, head)]).
bn(take_wr(6,dom,out),[(2, head), (4, tails)]) :- bn(take_wr(5,dom,out),[(2, head), (3, tails)]), take_wr_nth(6,dom,out,[(1, tails)]).
bn(take_wr(6,dom,out),[(2, head), (4, tails)]) :- bn(take_wr(5,dom,out),[(1, head), (4, tails)]), take_wr_nth(6,dom,out,[(1, head)]).
bn(take_wr(6,dom,out),[(1, head), (5, tails)]) :- bn(take_wr(5,dom,out),[(1, head), (4, tails)]), take_wr_nth(6,dom,out,[(1, tails)]).
bn(take_wr(6,dom,out),[(1, head), (5, tails)]) :- bn(take_wr(5,dom,out),[(5, tails)]), take_wr_nth(6,dom,out,[(1, head)]).
_lists_sw(take_wr(7,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(7,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(7,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(7,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(7,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(7,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(7,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(7,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(7,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(7,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(7,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(7,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(7,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(7,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(7,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(7,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(7,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(7,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(7,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(7,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(7,dom,out),[(7, head)]) :- bn(take_wr(6,dom,out),[(6, head)]), take_wr_nth(7,dom,out,[(1, head)]).
bn(take_wr(7,dom,out),[(7, tails)]) :- bn(take_wr(6,dom,out),[(6, tails)]), take_wr_nth(7,dom,out,[(1, tails)]).
bn(take_wr(7,dom,out),[(6, head), (1, tails)]) :- bn(take_wr(6,dom,out),[(6, head)]), take_wr_nth(7,dom,out,[(1, tails)]).
bn(take_wr(7,dom,out),[(6, head), (1, tails)]) :- bn(take_wr(6,dom,out),[(5, head), (1, tails)]), take_wr_nth(7,dom,out,[(1, head)]).
bn(take_wr(7,dom,out),[(5, head), (2, tails)]) :- bn(take_wr(6,dom,out),[(5, head), (1, tails)]), take_wr_nth(7,dom,out,[(1, tails)]).
bn(take_wr(7,dom,out),[(5, head), (2, tails)]) :- bn(take_wr(6,dom,out),[(4, head), (2, tails)]), take_wr_nth(7,dom,out,[(1, head)]).
bn(take_wr(7,dom,out),[(4, head), (3, tails)]) :- bn(take_wr(6,dom,out),[(4, head), (2, tails)]), take_wr_nth(7,dom,out,[(1, tails)]).
bn(take_wr(7,dom,out),[(4, head), (3, tails)]) :- bn(take_wr(6,dom,out),[(3, head), (3, tails)]), take_wr_nth(7,dom,out,[(1, head)]).
bn(take_wr(7,dom,out),[(3, head), (4, tails)]) :- bn(take_wr(6,dom,out),[(3, head), (3, tails)]), take_wr_nth(7,dom,out,[(1, tails)]).
bn(take_wr(7,dom,out),[(3, head), (4, tails)]) :- bn(take_wr(6,dom,out),[(2, head), (4, tails)]), take_wr_nth(7,dom,out,[(1, head)]).
bn(take_wr(7,dom,out),[(2, head), (5, tails)]) :- bn(take_wr(6,dom,out),[(2, head), (4, tails)]), take_wr_nth(7,dom,out,[(1, tails)]).
bn(take_wr(7,dom,out),[(2, head), (5, tails)]) :- bn(take_wr(6,dom,out),[(1, head), (5, tails)]), take_wr_nth(7,dom,out,[(1, head)]).
bn(take_wr(7,dom,out),[(1, head), (6, tails)]) :- bn(take_wr(6,dom,out),[(1, head), (5, tails)]), take_wr_nth(7,dom,out,[(1, tails)]).
bn(take_wr(7,dom,out),[(1, head), (6, tails)]) :- bn(take_wr(6,dom,out),[(6, tails)]), take_wr_nth(7,dom,out,[(1, head)]).
_lists_sw(take_wr(8,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(8,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(8,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(8,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(8,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(8,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(8,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(8,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(8,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(8,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(8,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(8,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(8,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(8,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(8,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(8,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(8,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(8,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(8,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(8,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(8,dom,out),[(8, head)]) :- bn(take_wr(7,dom,out),[(7, head)]), take_wr_nth(8,dom,out,[(1, head)]).
bn(take_wr(8,dom,out),[(8, tails)]) :- bn(take_wr(7,dom,out),[(7, tails)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(7, head), (1, tails)]) :- bn(take_wr(7,dom,out),[(7, head)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(7, head), (1, tails)]) :- bn(take_wr(7,dom,out),[(6, head), (1, tails)]), take_wr_nth(8,dom,out,[(1, head)]).
bn(take_wr(8,dom,out),[(6, head), (2, tails)]) :- bn(take_wr(7,dom,out),[(6, head), (1, tails)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(6, head), (2, tails)]) :- bn(take_wr(7,dom,out),[(5, head), (2, tails)]), take_wr_nth(8,dom,out,[(1, head)]).
bn(take_wr(8,dom,out),[(5, head), (3, tails)]) :- bn(take_wr(7,dom,out),[(5, head), (2, tails)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(5, head), (3, tails)]) :- bn(take_wr(7,dom,out),[(4, head), (3, tails)]), take_wr_nth(8,dom,out,[(1, head)]).
bn(take_wr(8,dom,out),[(4, head), (4, tails)]) :- bn(take_wr(7,dom,out),[(4, head), (3, tails)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(4, head), (4, tails)]) :- bn(take_wr(7,dom,out),[(3, head), (4, tails)]), take_wr_nth(8,dom,out,[(1, head)]).
bn(take_wr(8,dom,out),[(3, head), (5, tails)]) :- bn(take_wr(7,dom,out),[(3, head), (4, tails)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(3, head), (5, tails)]) :- bn(take_wr(7,dom,out),[(2, head), (5, tails)]), take_wr_nth(8,dom,out,[(1, head)]).
bn(take_wr(8,dom,out),[(2, head), (6, tails)]) :- bn(take_wr(7,dom,out),[(2, head), (5, tails)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(2, head), (6, tails)]) :- bn(take_wr(7,dom,out),[(1, head), (6, tails)]), take_wr_nth(8,dom,out,[(1, head)]).
bn(take_wr(8,dom,out),[(1, head), (7, tails)]) :- bn(take_wr(7,dom,out),[(1, head), (6, tails)]), take_wr_nth(8,dom,out,[(1, tails)]).
bn(take_wr(8,dom,out),[(1, head), (7, tails)]) :- bn(take_wr(7,dom,out),[(7, tails)]), take_wr_nth(8,dom,out,[(1, head)]).
_lists_sw(take_wr(9,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(9,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(9,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(9,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(9,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(9,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(9,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(9,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(9,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(9,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(9,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(9,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(9,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(9,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(9,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(9,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(9,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(9,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(9,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(9,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(9,dom,out),[(9, head)]) :- bn(take_wr(8,dom,out),[(8, head)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(9, tails)]) :- bn(take_wr(8,dom,out),[(8, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(8, head), (1, tails)]) :- bn(take_wr(8,dom,out),[(8, head)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(8, head), (1, tails)]) :- bn(take_wr(8,dom,out),[(7, head), (1, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(7, head), (2, tails)]) :- bn(take_wr(8,dom,out),[(7, head), (1, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(7, head), (2, tails)]) :- bn(take_wr(8,dom,out),[(6, head), (2, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(6, head), (3, tails)]) :- bn(take_wr(8,dom,out),[(6, head), (2, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(6, head), (3, tails)]) :- bn(take_wr(8,dom,out),[(5, head), (3, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(5, head), (4, tails)]) :- bn(take_wr(8,dom,out),[(5, head), (3, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(5, head), (4, tails)]) :- bn(take_wr(8,dom,out),[(4, head), (4, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(4, head), (5, tails)]) :- bn(take_wr(8,dom,out),[(4, head), (4, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(4, head), (5, tails)]) :- bn(take_wr(8,dom,out),[(3, head), (5, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(3, head), (6, tails)]) :- bn(take_wr(8,dom,out),[(3, head), (5, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(3, head), (6, tails)]) :- bn(take_wr(8,dom,out),[(2, head), (6, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(2, head), (7, tails)]) :- bn(take_wr(8,dom,out),[(2, head), (6, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(2, head), (7, tails)]) :- bn(take_wr(8,dom,out),[(1, head), (7, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
bn(take_wr(9,dom,out),[(1, head), (8, tails)]) :- bn(take_wr(8,dom,out),[(1, head), (7, tails)]), take_wr_nth(9,dom,out,[(1, tails)]).
bn(take_wr(9,dom,out),[(1, head), (8, tails)]) :- bn(take_wr(8,dom,out),[(8, tails)]), take_wr_nth(9,dom,out,[(1, head)]).
_lists_sw(take_wr(10,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(10,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(10,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(10,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(10,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(10,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(10,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(10,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(10,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(10,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(10,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(10,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(10,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(10,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(10,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(10,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(10,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(10,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(10,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(10,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(10,dom,out),[(10, head)]) :- bn(take_wr(9,dom,out),[(9, head)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(10, tails)]) :- bn(take_wr(9,dom,out),[(9, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(9, head), (1, tails)]) :- bn(take_wr(9,dom,out),[(9, head)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(9, head), (1, tails)]) :- bn(take_wr(9,dom,out),[(8, head), (1, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(8, head), (2, tails)]) :- bn(take_wr(9,dom,out),[(8, head), (1, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(8, head), (2, tails)]) :- bn(take_wr(9,dom,out),[(7, head), (2, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(7, head), (3, tails)]) :- bn(take_wr(9,dom,out),[(7, head), (2, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(7, head), (3, tails)]) :- bn(take_wr(9,dom,out),[(6, head), (3, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(6, head), (4, tails)]) :- bn(take_wr(9,dom,out),[(6, head), (3, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(6, head), (4, tails)]) :- bn(take_wr(9,dom,out),[(5, head), (4, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(5, head), (5, tails)]) :- bn(take_wr(9,dom,out),[(5, head), (4, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(5, head), (5, tails)]) :- bn(take_wr(9,dom,out),[(4, head), (5, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(4, head), (6, tails)]) :- bn(take_wr(9,dom,out),[(4, head), (5, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(4, head), (6, tails)]) :- bn(take_wr(9,dom,out),[(3, head), (6, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(3, head), (7, tails)]) :- bn(take_wr(9,dom,out),[(3, head), (6, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(3, head), (7, tails)]) :- bn(take_wr(9,dom,out),[(2, head), (7, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(2, head), (8, tails)]) :- bn(take_wr(9,dom,out),[(2, head), (7, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(2, head), (8, tails)]) :- bn(take_wr(9,dom,out),[(1, head), (8, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
bn(take_wr(10,dom,out),[(1, head), (9, tails)]) :- bn(take_wr(9,dom,out),[(1, head), (8, tails)]), take_wr_nth(10,dom,out,[(1, tails)]).
bn(take_wr(10,dom,out),[(1, head), (9, tails)]) :- bn(take_wr(9,dom,out),[(9, tails)]), take_wr_nth(10,dom,out,[(1, head)]).
_lists_sw(take_wr(11,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(11,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(11,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(11,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(11,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(11,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(11,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(11,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(11,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(11,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(11,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(11,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(11,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(11,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(11,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(11,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(11,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(11,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(11,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(11,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(11,dom,out),[(10, head), (1, tails)]) :- bn(take_wr(10,dom,out),[(10, head)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(10, head), (1, tails)]) :- bn(take_wr(10,dom,out),[(9, head), (1, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(9, head), (2, tails)]) :- bn(take_wr(10,dom,out),[(9, head), (1, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(9, head), (2, tails)]) :- bn(take_wr(10,dom,out),[(8, head), (2, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(8, head), (3, tails)]) :- bn(take_wr(10,dom,out),[(8, head), (2, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(8, head), (3, tails)]) :- bn(take_wr(10,dom,out),[(7, head), (3, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(7, head), (4, tails)]) :- bn(take_wr(10,dom,out),[(7, head), (3, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(7, head), (4, tails)]) :- bn(take_wr(10,dom,out),[(6, head), (4, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(6, head), (5, tails)]) :- bn(take_wr(10,dom,out),[(6, head), (4, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(6, head), (5, tails)]) :- bn(take_wr(10,dom,out),[(5, head), (5, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(5, head), (6, tails)]) :- bn(take_wr(10,dom,out),[(5, head), (5, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(5, head), (6, tails)]) :- bn(take_wr(10,dom,out),[(4, head), (6, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(4, head), (7, tails)]) :- bn(take_wr(10,dom,out),[(4, head), (6, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(4, head), (7, tails)]) :- bn(take_wr(10,dom,out),[(3, head), (7, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(3, head), (8, tails)]) :- bn(take_wr(10,dom,out),[(3, head), (7, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(3, head), (8, tails)]) :- bn(take_wr(10,dom,out),[(2, head), (8, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(2, head), (9, tails)]) :- bn(take_wr(10,dom,out),[(2, head), (8, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(2, head), (9, tails)]) :- bn(take_wr(10,dom,out),[(1, head), (9, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
bn(take_wr(11,dom,out),[(1, head), (10, tails)]) :- bn(take_wr(10,dom,out),[(1, head), (9, tails)]), take_wr_nth(11,dom,out,[(1, tails)]).
bn(take_wr(11,dom,out),[(1, head), (10, tails)]) :- bn(take_wr(10,dom,out),[(10, tails)]), take_wr_nth(11,dom,out,[(1, head)]).
_lists_sw(take_wr(12,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(12,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(12,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(12,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(12,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(12,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(12,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(12,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(12,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(12,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(12,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(12,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(12,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(12,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(12,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(12,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(12,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(12,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(12,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(12,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(12,dom,out),[(10, head), (2, tails)]) :- bn(take_wr(11,dom,out),[(10, head), (1, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(10, head), (2, tails)]) :- bn(take_wr(11,dom,out),[(9, head), (2, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(9, head), (3, tails)]) :- bn(take_wr(11,dom,out),[(9, head), (2, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(9, head), (3, tails)]) :- bn(take_wr(11,dom,out),[(8, head), (3, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(8, head), (4, tails)]) :- bn(take_wr(11,dom,out),[(8, head), (3, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(8, head), (4, tails)]) :- bn(take_wr(11,dom,out),[(7, head), (4, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(7, head), (5, tails)]) :- bn(take_wr(11,dom,out),[(7, head), (4, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(7, head), (5, tails)]) :- bn(take_wr(11,dom,out),[(6, head), (5, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(6, head), (6, tails)]) :- bn(take_wr(11,dom,out),[(6, head), (5, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(6, head), (6, tails)]) :- bn(take_wr(11,dom,out),[(5, head), (6, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(5, head), (7, tails)]) :- bn(take_wr(11,dom,out),[(5, head), (6, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(5, head), (7, tails)]) :- bn(take_wr(11,dom,out),[(4, head), (7, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(4, head), (8, tails)]) :- bn(take_wr(11,dom,out),[(4, head), (7, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(4, head), (8, tails)]) :- bn(take_wr(11,dom,out),[(3, head), (8, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(3, head), (9, tails)]) :- bn(take_wr(11,dom,out),[(3, head), (8, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(3, head), (9, tails)]) :- bn(take_wr(11,dom,out),[(2, head), (9, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
bn(take_wr(12,dom,out),[(2, head), (10, tails)]) :- bn(take_wr(11,dom,out),[(2, head), (9, tails)]), take_wr_nth(12,dom,out,[(1, tails)]).
bn(take_wr(12,dom,out),[(2, head), (10, tails)]) :- bn(take_wr(11,dom,out),[(1, head), (10, tails)]), take_wr_nth(12,dom,out,[(1, head)]).
_lists_sw(take_wr(13,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(13,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(13,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(13,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(13,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(13,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(13,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(13,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(13,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(13,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(13,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(13,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(13,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(13,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(13,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(13,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(13,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(13,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(13,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(13,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(13,dom,out),[(10, head), (3, tails)]) :- bn(take_wr(12,dom,out),[(10, head), (2, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(10, head), (3, tails)]) :- bn(take_wr(12,dom,out),[(9, head), (3, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
bn(take_wr(13,dom,out),[(9, head), (4, tails)]) :- bn(take_wr(12,dom,out),[(9, head), (3, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(9, head), (4, tails)]) :- bn(take_wr(12,dom,out),[(8, head), (4, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
bn(take_wr(13,dom,out),[(8, head), (5, tails)]) :- bn(take_wr(12,dom,out),[(8, head), (4, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(8, head), (5, tails)]) :- bn(take_wr(12,dom,out),[(7, head), (5, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
bn(take_wr(13,dom,out),[(7, head), (6, tails)]) :- bn(take_wr(12,dom,out),[(7, head), (5, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(7, head), (6, tails)]) :- bn(take_wr(12,dom,out),[(6, head), (6, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
bn(take_wr(13,dom,out),[(6, head), (7, tails)]) :- bn(take_wr(12,dom,out),[(6, head), (6, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(6, head), (7, tails)]) :- bn(take_wr(12,dom,out),[(5, head), (7, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
bn(take_wr(13,dom,out),[(5, head), (8, tails)]) :- bn(take_wr(12,dom,out),[(5, head), (7, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(5, head), (8, tails)]) :- bn(take_wr(12,dom,out),[(4, head), (8, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
bn(take_wr(13,dom,out),[(4, head), (9, tails)]) :- bn(take_wr(12,dom,out),[(4, head), (8, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(4, head), (9, tails)]) :- bn(take_wr(12,dom,out),[(3, head), (9, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
bn(take_wr(13,dom,out),[(3, head), (10, tails)]) :- bn(take_wr(12,dom,out),[(3, head), (9, tails)]), take_wr_nth(13,dom,out,[(1, tails)]).
bn(take_wr(13,dom,out),[(3, head), (10, tails)]) :- bn(take_wr(12,dom,out),[(2, head), (10, tails)]), take_wr_nth(13,dom,out,[(1, head)]).
_lists_sw(take_wr(14,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(14,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(14,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(14,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(14,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(14,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(14,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(14,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(14,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(14,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(14,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(14,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(14,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(14,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(14,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(14,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(14,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(14,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(14,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(14,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(14,dom,out),[(10, head), (4, tails)]) :- bn(take_wr(13,dom,out),[(10, head), (3, tails)]), take_wr_nth(14,dom,out,[(1, tails)]).
bn(take_wr(14,dom,out),[(10, head), (4, tails)]) :- bn(take_wr(13,dom,out),[(9, head), (4, tails)]), take_wr_nth(14,dom,out,[(1, head)]).
bn(take_wr(14,dom,out),[(9, head), (5, tails)]) :- bn(take_wr(13,dom,out),[(9, head), (4, tails)]), take_wr_nth(14,dom,out,[(1, tails)]).
bn(take_wr(14,dom,out),[(9, head), (5, tails)]) :- bn(take_wr(13,dom,out),[(8, head), (5, tails)]), take_wr_nth(14,dom,out,[(1, head)]).
bn(take_wr(14,dom,out),[(8, head), (6, tails)]) :- bn(take_wr(13,dom,out),[(8, head), (5, tails)]), take_wr_nth(14,dom,out,[(1, tails)]).
bn(take_wr(14,dom,out),[(8, head), (6, tails)]) :- bn(take_wr(13,dom,out),[(7, head), (6, tails)]), take_wr_nth(14,dom,out,[(1, head)]).
bn(take_wr(14,dom,out),[(7, head), (7, tails)]) :- bn(take_wr(13,dom,out),[(7, head), (6, tails)]), take_wr_nth(14,dom,out,[(1, tails)]).
bn(take_wr(14,dom,out),[(7, head), (7, tails)]) :- bn(take_wr(13,dom,out),[(6, head), (7, tails)]), take_wr_nth(14,dom,out,[(1, head)]).
bn(take_wr(14,dom,out),[(6, head), (8, tails)]) :- bn(take_wr(13,dom,out),[(6, head), (7, tails)]), take_wr_nth(14,dom,out,[(1, tails)]).
bn(take_wr(14,dom,out),[(6, head), (8, tails)]) :- bn(take_wr(13,dom,out),[(5, head), (8, tails)]), take_wr_nth(14,dom,out,[(1, head)]).
bn(take_wr(14,dom,out),[(5, head), (9, tails)]) :- bn(take_wr(13,dom,out),[(5, head), (8, tails)]), take_wr_nth(14,dom,out,[(1, tails)]).
bn(take_wr(14,dom,out),[(5, head), (9, tails)]) :- bn(take_wr(13,dom,out),[(4, head), (9, tails)]), take_wr_nth(14,dom,out,[(1, head)]).
bn(take_wr(14,dom,out),[(4, head), (10, tails)]) :- bn(take_wr(13,dom,out),[(4, head), (9, tails)]), take_wr_nth(14,dom,out,[(1, tails)]).
bn(take_wr(14,dom,out),[(4, head), (10, tails)]) :- bn(take_wr(13,dom,out),[(3, head), (10, tails)]), take_wr_nth(14,dom,out,[(1, head)]).
_lists_sw(take_wr(15,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(15,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(15,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(15,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(15,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(15,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(15,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(15,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(15,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(15,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(15,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(15,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(15,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(15,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(15,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(15,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(15,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(15,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(15,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(15,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(15,dom,out),[(10, head), (5, tails)]) :- bn(take_wr(14,dom,out),[(10, head), (4, tails)]), take_wr_nth(15,dom,out,[(1, tails)]).
bn(take_wr(15,dom,out),[(10, head), (5, tails)]) :- bn(take_wr(14,dom,out),[(9, head), (5, tails)]), take_wr_nth(15,dom,out,[(1, head)]).
bn(take_wr(15,dom,out),[(9, head), (6, tails)]) :- bn(take_wr(14,dom,out),[(9, head), (5, tails)]), take_wr_nth(15,dom,out,[(1, tails)]).
bn(take_wr(15,dom,out),[(9, head), (6, tails)]) :- bn(take_wr(14,dom,out),[(8, head), (6, tails)]), take_wr_nth(15,dom,out,[(1, head)]).
bn(take_wr(15,dom,out),[(8, head), (7, tails)]) :- bn(take_wr(14,dom,out),[(8, head), (6, tails)]), take_wr_nth(15,dom,out,[(1, tails)]).
bn(take_wr(15,dom,out),[(8, head), (7, tails)]) :- bn(take_wr(14,dom,out),[(7, head), (7, tails)]), take_wr_nth(15,dom,out,[(1, head)]).
bn(take_wr(15,dom,out),[(7, head), (8, tails)]) :- bn(take_wr(14,dom,out),[(7, head), (7, tails)]), take_wr_nth(15,dom,out,[(1, tails)]).
bn(take_wr(15,dom,out),[(7, head), (8, tails)]) :- bn(take_wr(14,dom,out),[(6, head), (8, tails)]), take_wr_nth(15,dom,out,[(1, head)]).
bn(take_wr(15,dom,out),[(6, head), (9, tails)]) :- bn(take_wr(14,dom,out),[(6, head), (8, tails)]), take_wr_nth(15,dom,out,[(1, tails)]).
bn(take_wr(15,dom,out),[(6, head), (9, tails)]) :- bn(take_wr(14,dom,out),[(5, head), (9, tails)]), take_wr_nth(15,dom,out,[(1, head)]).
bn(take_wr(15,dom,out),[(5, head), (10, tails)]) :- bn(take_wr(14,dom,out),[(5, head), (9, tails)]), take_wr_nth(15,dom,out,[(1, tails)]).
bn(take_wr(15,dom,out),[(5, head), (10, tails)]) :- bn(take_wr(14,dom,out),[(4, head), (10, tails)]), take_wr_nth(15,dom,out,[(1, head)]).
_lists_sw(take_wr(16,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(16,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(16,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(16,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(16,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(16,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(16,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(16,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(16,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(16,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(16,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(16,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(16,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(16,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(16,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(16,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(16,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(16,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(16,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(16,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(16,dom,out),[(10, head), (6, tails)]) :- bn(take_wr(15,dom,out),[(10, head), (5, tails)]), take_wr_nth(16,dom,out,[(1, tails)]).
bn(take_wr(16,dom,out),[(10, head), (6, tails)]) :- bn(take_wr(15,dom,out),[(9, head), (6, tails)]), take_wr_nth(16,dom,out,[(1, head)]).
bn(take_wr(16,dom,out),[(9, head), (7, tails)]) :- bn(take_wr(15,dom,out),[(9, head), (6, tails)]), take_wr_nth(16,dom,out,[(1, tails)]).
bn(take_wr(16,dom,out),[(9, head), (7, tails)]) :- bn(take_wr(15,dom,out),[(8, head), (7, tails)]), take_wr_nth(16,dom,out,[(1, head)]).
bn(take_wr(16,dom,out),[(8, head), (8, tails)]) :- bn(take_wr(15,dom,out),[(8, head), (7, tails)]), take_wr_nth(16,dom,out,[(1, tails)]).
bn(take_wr(16,dom,out),[(8, head), (8, tails)]) :- bn(take_wr(15,dom,out),[(7, head), (8, tails)]), take_wr_nth(16,dom,out,[(1, head)]).
bn(take_wr(16,dom,out),[(7, head), (9, tails)]) :- bn(take_wr(15,dom,out),[(7, head), (8, tails)]), take_wr_nth(16,dom,out,[(1, tails)]).
bn(take_wr(16,dom,out),[(7, head), (9, tails)]) :- bn(take_wr(15,dom,out),[(6, head), (9, tails)]), take_wr_nth(16,dom,out,[(1, head)]).
bn(take_wr(16,dom,out),[(6, head), (10, tails)]) :- bn(take_wr(15,dom,out),[(6, head), (9, tails)]), take_wr_nth(16,dom,out,[(1, tails)]).
bn(take_wr(16,dom,out),[(6, head), (10, tails)]) :- bn(take_wr(15,dom,out),[(5, head), (10, tails)]), take_wr_nth(16,dom,out,[(1, head)]).
_lists_sw(take_wr(17,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(17,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(17,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(17,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(17,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(17,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(17,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(17,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(17,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(17,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(17,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(17,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(17,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(17,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(17,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(17,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(17,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(17,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(17,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(17,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(17,dom,out),[(10, head), (7, tails)]) :- bn(take_wr(16,dom,out),[(10, head), (6, tails)]), take_wr_nth(17,dom,out,[(1, tails)]).
bn(take_wr(17,dom,out),[(10, head), (7, tails)]) :- bn(take_wr(16,dom,out),[(9, head), (7, tails)]), take_wr_nth(17,dom,out,[(1, head)]).
bn(take_wr(17,dom,out),[(9, head), (8, tails)]) :- bn(take_wr(16,dom,out),[(9, head), (7, tails)]), take_wr_nth(17,dom,out,[(1, tails)]).
bn(take_wr(17,dom,out),[(9, head), (8, tails)]) :- bn(take_wr(16,dom,out),[(8, head), (8, tails)]), take_wr_nth(17,dom,out,[(1, head)]).
bn(take_wr(17,dom,out),[(8, head), (9, tails)]) :- bn(take_wr(16,dom,out),[(8, head), (8, tails)]), take_wr_nth(17,dom,out,[(1, tails)]).
bn(take_wr(17,dom,out),[(8, head), (9, tails)]) :- bn(take_wr(16,dom,out),[(7, head), (9, tails)]), take_wr_nth(17,dom,out,[(1, head)]).
bn(take_wr(17,dom,out),[(7, head), (10, tails)]) :- bn(take_wr(16,dom,out),[(7, head), (9, tails)]), take_wr_nth(17,dom,out,[(1, tails)]).
bn(take_wr(17,dom,out),[(7, head), (10, tails)]) :- bn(take_wr(16,dom,out),[(6, head), (10, tails)]), take_wr_nth(17,dom,out,[(1, head)]).
_lists_sw(take_wr(18,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(18,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(18,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(18,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(18,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(18,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(18,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(18,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(18,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(18,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(18,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(18,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(18,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(18,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(18,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(18,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(18,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(18,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(18,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(18,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(18,dom,out),[(10, head), (8, tails)]) :- bn(take_wr(17,dom,out),[(10, head), (7, tails)]), take_wr_nth(18,dom,out,[(1, tails)]).
bn(take_wr(18,dom,out),[(10, head), (8, tails)]) :- bn(take_wr(17,dom,out),[(9, head), (8, tails)]), take_wr_nth(18,dom,out,[(1, head)]).
bn(take_wr(18,dom,out),[(9, head), (9, tails)]) :- bn(take_wr(17,dom,out),[(9, head), (8, tails)]), take_wr_nth(18,dom,out,[(1, tails)]).
bn(take_wr(18,dom,out),[(9, head), (9, tails)]) :- bn(take_wr(17,dom,out),[(8, head), (9, tails)]), take_wr_nth(18,dom,out,[(1, head)]).
bn(take_wr(18,dom,out),[(8, head), (10, tails)]) :- bn(take_wr(17,dom,out),[(8, head), (9, tails)]), take_wr_nth(18,dom,out,[(1, tails)]).
bn(take_wr(18,dom,out),[(8, head), (10, tails)]) :- bn(take_wr(17,dom,out),[(7, head), (10, tails)]), take_wr_nth(18,dom,out,[(1, head)]).
_lists_sw(take_wr(19,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(19,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(19,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(19,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(19,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(19,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(19,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(19,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(19,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(19,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(19,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(19,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(19,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(19,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(19,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(19,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(19,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(19,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(19,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(19,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(19,dom,out),[(10, head), (9, tails)]) :- bn(take_wr(18,dom,out),[(10, head), (8, tails)]), take_wr_nth(19,dom,out,[(1, tails)]).
bn(take_wr(19,dom,out),[(10, head), (9, tails)]) :- bn(take_wr(18,dom,out),[(9, head), (9, tails)]), take_wr_nth(19,dom,out,[(1, head)]).
bn(take_wr(19,dom,out),[(9, head), (10, tails)]) :- bn(take_wr(18,dom,out),[(9, head), (9, tails)]), take_wr_nth(19,dom,out,[(1, tails)]).
bn(take_wr(19,dom,out),[(9, head), (10, tails)]) :- bn(take_wr(18,dom,out),[(8, head), (10, tails)]), take_wr_nth(19,dom,out,[(1, head)]).
_lists_sw(take_wr(20,dom,out),2,[1, 1],[head, tails],head,[tails]) :- _lists_sw_p(take_wr(20,dom,out),0.5,[1],head,[tails]).
_lists_sw(take_wr(20,dom,out),2,[1, 1],[head, tails],tails,[head]) :- \+_lists_sw_p(take_wr(20,dom,out),0.5,[1],head,[tails]).
_lists_select_weighted(take_wr(20,dom,out),[1, 1],[head, tails],head,[tails]) :- _lists_sw(take_wr(20,dom,out),2,[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(20,dom,out),[1, 1],[head, tails],tails,[head]) :- _lists_sw(take_wr(20,dom,out),2,[1, 1],[head, tails],tails,[head]).
_lists_select_weighted(take_wr(20,dom,out),[(1, head), (1, tails)],head,[tails]) :- _lists_select_weighted(take_wr(20,dom,out),[1, 1],[head, tails],head,[tails]).
_lists_select_weighted(take_wr(20,dom,out),[(1, head), (1, tails)],tails,[head]) :- _lists_select_weighted(take_wr(20,dom,out),[1, 1],[head, tails],tails,[head]).
select_uniform_ms(take_wr(20,dom,out),[(1, head), (1, tails)],head,[(1, tails)]) :- _lists_select_weighted(take_wr(20,dom,out),[(1, head), (1, tails)],head,[tails]).
select_uniform_ms(take_wr(20,dom,out),[(1, head), (1, tails)],tails,[(1, head)]) :- _lists_select_weighted(take_wr(20,dom,out),[(1, head), (1, tails)],tails,[head]).
take_wr_nth(20,dom,out,[(1, head)]) :- select_uniform_ms(take_wr(20,dom,out),[(1, head), (1, tails)],head,[(1, tails)]).
take_wr_nth(20,dom,out,[(1, tails)]) :- select_uniform_ms(take_wr(20,dom,out),[(1, head), (1, tails)],tails,[(1, head)]).
bn(take_wr(20,dom,out),[(10, head), (10, tails)]) :- bn(take_wr(19,dom,out),[(10, head), (9, tails)]), take_wr_nth(20,dom,out,[(1, tails)]).
bn(take_wr(20,dom,out),[(10, head), (10, tails)]) :- bn(take_wr(19,dom,out),[(9, head), (10, tails)]), take_wr_nth(20,dom,out,[(1, head)]).
bn(out,[(10, head), (10, tails)]) :- bn(take_wr(20,dom,out),[(10, head), (10, tails)]).
sat(exactly(10,out,head)) :- bn(out,[(10, head), (10, tails)]).
query(sat(exactly(10,out,head))).
