0.02::base.
ls(twr(1,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(1,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(1,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(1,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(1,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(1,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(1,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(1,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(1,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(1,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(1,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(1,1-6,4-16),[(1, defective)]) :- twr_nth(1,1-6,4-16,[(1, defective)]).
bn(twr(1,1-6,4-16),[(1, none_of([defective]))]) :- twr_nth(1,1-6,4-16,[(1, none_of([defective]))]).
ls(twr(2,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(2,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(2,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(2,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(2,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(2,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(2,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(2,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(2,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(2,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(2,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(2,1-6,4-16),[(2, defective)]) :- bn(twr(1,1-6,4-16),[(1, defective)]), twr_nth(2,1-6,4-16,[(1, defective)]).
bn(twr(2,1-6,4-16),[(2, none_of([defective]))]) :- bn(twr(1,1-6,4-16),[(1, none_of([defective]))]), twr_nth(2,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(2,1-6,4-16),[(1, defective), (1, none_of([defective]))]) :- bn(twr(1,1-6,4-16),[(1, defective)]), twr_nth(2,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(2,1-6,4-16),[(1, defective), (1, none_of([defective]))]) :- bn(twr(1,1-6,4-16),[(1, none_of([defective]))]), twr_nth(2,1-6,4-16,[(1, defective)]).
ls(twr(3,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(3,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(3,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(3,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(3,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(3,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(3,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(3,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(3,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(3,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(3,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(3,1-6,4-16),[(3, defective)]) :- bn(twr(2,1-6,4-16),[(2, defective)]), twr_nth(3,1-6,4-16,[(1, defective)]).
bn(twr(3,1-6,4-16),[(3, none_of([defective]))]) :- bn(twr(2,1-6,4-16),[(2, none_of([defective]))]), twr_nth(3,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(3,1-6,4-16),[(2, defective), (1, none_of([defective]))]) :- bn(twr(2,1-6,4-16),[(2, defective)]), twr_nth(3,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(3,1-6,4-16),[(2, defective), (1, none_of([defective]))]) :- bn(twr(2,1-6,4-16),[(1, defective), (1, none_of([defective]))]), twr_nth(3,1-6,4-16,[(1, defective)]).
bn(twr(3,1-6,4-16),[(1, defective), (2, none_of([defective]))]) :- bn(twr(2,1-6,4-16),[(1, defective), (1, none_of([defective]))]), twr_nth(3,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(3,1-6,4-16),[(1, defective), (2, none_of([defective]))]) :- bn(twr(2,1-6,4-16),[(2, none_of([defective]))]), twr_nth(3,1-6,4-16,[(1, defective)]).
ls(twr(4,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(4,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(4,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(4,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(4,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(4,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(4,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(4,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(4,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(4,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(4,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(4,1-6,4-16),[(4, defective)]) :- bn(twr(3,1-6,4-16),[(3, defective)]), twr_nth(4,1-6,4-16,[(1, defective)]).
bn(twr(4,1-6,4-16),[(4, none_of([defective]))]) :- bn(twr(3,1-6,4-16),[(3, none_of([defective]))]), twr_nth(4,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(4,1-6,4-16),[(3, defective), (1, none_of([defective]))]) :- bn(twr(3,1-6,4-16),[(3, defective)]), twr_nth(4,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(4,1-6,4-16),[(3, defective), (1, none_of([defective]))]) :- bn(twr(3,1-6,4-16),[(2, defective), (1, none_of([defective]))]), twr_nth(4,1-6,4-16,[(1, defective)]).
bn(twr(4,1-6,4-16),[(2, defective), (2, none_of([defective]))]) :- bn(twr(3,1-6,4-16),[(2, defective), (1, none_of([defective]))]), twr_nth(4,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(4,1-6,4-16),[(2, defective), (2, none_of([defective]))]) :- bn(twr(3,1-6,4-16),[(1, defective), (2, none_of([defective]))]), twr_nth(4,1-6,4-16,[(1, defective)]).
bn(twr(4,1-6,4-16),[(1, defective), (3, none_of([defective]))]) :- bn(twr(3,1-6,4-16),[(1, defective), (2, none_of([defective]))]), twr_nth(4,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(4,1-6,4-16),[(1, defective), (3, none_of([defective]))]) :- bn(twr(3,1-6,4-16),[(3, none_of([defective]))]), twr_nth(4,1-6,4-16,[(1, defective)]).
ls(twr(5,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(5,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(5,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(5,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(5,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(5,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(5,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(5,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(5,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(5,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(5,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(5,1-6,4-16),[(5, defective)]) :- bn(twr(4,1-6,4-16),[(4, defective)]), twr_nth(5,1-6,4-16,[(1, defective)]).
bn(twr(5,1-6,4-16),[(5, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(4, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(5,1-6,4-16),[(4, defective), (1, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(4, defective)]), twr_nth(5,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(5,1-6,4-16),[(4, defective), (1, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(3, defective), (1, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, defective)]).
bn(twr(5,1-6,4-16),[(3, defective), (2, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(3, defective), (1, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(5,1-6,4-16),[(3, defective), (2, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(2, defective), (2, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, defective)]).
bn(twr(5,1-6,4-16),[(2, defective), (3, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(2, defective), (2, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(5,1-6,4-16),[(2, defective), (3, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(1, defective), (3, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, defective)]).
bn(twr(5,1-6,4-16),[(1, defective), (4, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(1, defective), (3, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(5,1-6,4-16),[(1, defective), (4, none_of([defective]))]) :- bn(twr(4,1-6,4-16),[(4, none_of([defective]))]), twr_nth(5,1-6,4-16,[(1, defective)]).
ls(twr(6,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(6,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(6,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(6,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(6,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(6,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(6,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(6,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(6,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(6,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(6,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(6,1-6,4-16),[(6, defective)]) :- bn(twr(5,1-6,4-16),[(5, defective)]), twr_nth(6,1-6,4-16,[(1, defective)]).
bn(twr(6,1-6,4-16),[(6, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(5, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(6,1-6,4-16),[(5, defective), (1, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(5, defective)]), twr_nth(6,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(6,1-6,4-16),[(5, defective), (1, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(4, defective), (1, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, defective)]).
bn(twr(6,1-6,4-16),[(4, defective), (2, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(4, defective), (1, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(6,1-6,4-16),[(4, defective), (2, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(3, defective), (2, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, defective)]).
bn(twr(6,1-6,4-16),[(3, defective), (3, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(3, defective), (2, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(6,1-6,4-16),[(3, defective), (3, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(2, defective), (3, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, defective)]).
bn(twr(6,1-6,4-16),[(2, defective), (4, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(2, defective), (3, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(6,1-6,4-16),[(2, defective), (4, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(1, defective), (4, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, defective)]).
bn(twr(6,1-6,4-16),[(1, defective), (5, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(1, defective), (4, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(6,1-6,4-16),[(1, defective), (5, none_of([defective]))]) :- bn(twr(5,1-6,4-16),[(5, none_of([defective]))]), twr_nth(6,1-6,4-16,[(1, defective)]).
ls(twr(7,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(7,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(7,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(7,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(7,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(7,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(7,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(7,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(7,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(7,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(7,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(7, defective)]) :- bn(twr(6,1-6,4-16),[(6, defective)]), twr_nth(7,1-6,4-16,[(1, defective)]).
bn(twr(7,1-6,4-16),[(7, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(6, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(6, defective), (1, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(6, defective)]), twr_nth(7,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(6, defective), (1, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(5, defective), (1, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, defective)]).
bn(twr(7,1-6,4-16),[(5, defective), (2, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(5, defective), (1, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(5, defective), (2, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(4, defective), (2, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, defective)]).
bn(twr(7,1-6,4-16),[(4, defective), (3, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(4, defective), (2, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(4, defective), (3, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(3, defective), (3, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, defective)]).
bn(twr(7,1-6,4-16),[(3, defective), (4, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(3, defective), (3, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(3, defective), (4, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(2, defective), (4, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, defective)]).
bn(twr(7,1-6,4-16),[(2, defective), (5, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(2, defective), (4, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(2, defective), (5, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(1, defective), (5, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, defective)]).
bn(twr(7,1-6,4-16),[(1, defective), (6, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(1, defective), (5, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(7,1-6,4-16),[(1, defective), (6, none_of([defective]))]) :- bn(twr(6,1-6,4-16),[(6, none_of([defective]))]), twr_nth(7,1-6,4-16,[(1, defective)]).
ls(twr(8,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(8,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(8,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(8,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(8,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(8,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(8,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(8,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(8,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(8,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(8,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(8, defective)]) :- bn(twr(7,1-6,4-16),[(7, defective)]), twr_nth(8,1-6,4-16,[(1, defective)]).
bn(twr(8,1-6,4-16),[(8, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(7, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(7, defective), (1, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(7, defective)]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(7, defective), (1, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(6, defective), (1, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, defective)]).
bn(twr(8,1-6,4-16),[(6, defective), (2, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(6, defective), (1, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(6, defective), (2, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(5, defective), (2, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, defective)]).
bn(twr(8,1-6,4-16),[(5, defective), (3, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(5, defective), (2, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(5, defective), (3, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(4, defective), (3, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, defective)]).
bn(twr(8,1-6,4-16),[(4, defective), (4, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(4, defective), (3, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(4, defective), (4, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(3, defective), (4, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, defective)]).
bn(twr(8,1-6,4-16),[(3, defective), (5, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(3, defective), (4, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(3, defective), (5, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(2, defective), (5, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, defective)]).
bn(twr(8,1-6,4-16),[(2, defective), (6, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(2, defective), (5, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(2, defective), (6, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(1, defective), (6, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, defective)]).
bn(twr(8,1-6,4-16),[(1, defective), (7, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(1, defective), (6, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(8,1-6,4-16),[(1, defective), (7, none_of([defective]))]) :- bn(twr(7,1-6,4-16),[(7, none_of([defective]))]), twr_nth(8,1-6,4-16,[(1, defective)]).
ls(twr(9,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(9,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(9,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(9,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(9,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(9,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(9,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(9,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(9,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(9,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(9,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(9, defective)]) :- bn(twr(8,1-6,4-16),[(8, defective)]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(9, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(8, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(8, defective), (1, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(8, defective)]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(8, defective), (1, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(7, defective), (1, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(7, defective), (2, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(7, defective), (1, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(7, defective), (2, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(6, defective), (2, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(6, defective), (3, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(6, defective), (2, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(6, defective), (3, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(5, defective), (3, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(5, defective), (4, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(5, defective), (3, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(5, defective), (4, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(4, defective), (4, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(4, defective), (5, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(4, defective), (4, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(4, defective), (5, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(3, defective), (5, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(3, defective), (6, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(3, defective), (5, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(3, defective), (6, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(2, defective), (6, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(2, defective), (7, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(2, defective), (6, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(2, defective), (7, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(1, defective), (7, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
bn(twr(9,1-6,4-16),[(1, defective), (8, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(1, defective), (7, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(9,1-6,4-16),[(1, defective), (8, none_of([defective]))]) :- bn(twr(8,1-6,4-16),[(8, none_of([defective]))]), twr_nth(9,1-6,4-16,[(1, defective)]).
ls(twr(10,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(10,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(10,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(10,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(10,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(10,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(10,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(10,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(10,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(10,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(10,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(10, defective)]) :- bn(twr(9,1-6,4-16),[(9, defective)]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(10, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(9, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(9, defective), (1, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(9, defective)]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(9, defective), (1, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(8, defective), (1, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(8, defective), (2, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(8, defective), (1, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(8, defective), (2, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(7, defective), (2, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(7, defective), (3, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(7, defective), (2, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(7, defective), (3, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(6, defective), (3, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(6, defective), (4, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(6, defective), (3, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(6, defective), (4, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(5, defective), (4, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(5, defective), (5, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(5, defective), (4, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(5, defective), (5, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(4, defective), (5, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(4, defective), (6, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(4, defective), (5, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(4, defective), (6, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(3, defective), (6, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(3, defective), (7, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(3, defective), (6, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(3, defective), (7, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(2, defective), (7, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(2, defective), (8, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(2, defective), (7, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(2, defective), (8, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(1, defective), (8, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
bn(twr(10,1-6,4-16),[(1, defective), (9, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(1, defective), (8, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(10,1-6,4-16),[(1, defective), (9, none_of([defective]))]) :- bn(twr(9,1-6,4-16),[(9, none_of([defective]))]), twr_nth(10,1-6,4-16,[(1, defective)]).
ls(twr(11,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(11,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(11,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(11,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(11,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(11,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(11,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(11,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(11,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(11,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(11,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(11, defective)]) :- bn(twr(10,1-6,4-16),[(10, defective)]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(11, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(10, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(10, defective), (1, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(10, defective)]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(10, defective), (1, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(9, defective), (1, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(9, defective), (2, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(9, defective), (1, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(9, defective), (2, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(8, defective), (2, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(8, defective), (3, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(8, defective), (2, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(8, defective), (3, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(7, defective), (3, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(7, defective), (4, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(7, defective), (3, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(7, defective), (4, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(6, defective), (4, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(6, defective), (5, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(6, defective), (4, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(6, defective), (5, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(5, defective), (5, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(5, defective), (6, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(5, defective), (5, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(5, defective), (6, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(4, defective), (6, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(4, defective), (7, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(4, defective), (6, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(4, defective), (7, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(3, defective), (7, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(3, defective), (8, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(3, defective), (7, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(3, defective), (8, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(2, defective), (8, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(2, defective), (9, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(2, defective), (8, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(2, defective), (9, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(1, defective), (9, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
bn(twr(11,1-6,4-16),[(1, defective), (10, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(1, defective), (9, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(11,1-6,4-16),[(1, defective), (10, none_of([defective]))]) :- bn(twr(10,1-6,4-16),[(10, none_of([defective]))]), twr_nth(11,1-6,4-16,[(1, defective)]).
ls(twr(12,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(12,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(12,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(12,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(12,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(12,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(12,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(12,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(12,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(12,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(12,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(12, defective)]) :- bn(twr(11,1-6,4-16),[(11, defective)]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(12, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(11, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(11, defective), (1, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(11, defective)]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(11, defective), (1, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(10, defective), (1, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(10, defective), (2, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(10, defective), (1, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(10, defective), (2, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(9, defective), (2, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(9, defective), (3, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(9, defective), (2, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(9, defective), (3, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(8, defective), (3, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(8, defective), (4, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(8, defective), (3, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(8, defective), (4, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(7, defective), (4, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(7, defective), (5, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(7, defective), (4, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(7, defective), (5, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(6, defective), (5, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(6, defective), (6, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(6, defective), (5, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(6, defective), (6, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(5, defective), (6, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(5, defective), (7, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(5, defective), (6, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(5, defective), (7, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(4, defective), (7, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(4, defective), (8, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(4, defective), (7, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(4, defective), (8, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(3, defective), (8, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(3, defective), (9, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(3, defective), (8, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(3, defective), (9, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(2, defective), (9, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(2, defective), (10, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(2, defective), (9, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(2, defective), (10, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(1, defective), (10, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
bn(twr(12,1-6,4-16),[(1, defective), (11, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(1, defective), (10, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(12,1-6,4-16),[(1, defective), (11, none_of([defective]))]) :- bn(twr(11,1-6,4-16),[(11, none_of([defective]))]), twr_nth(12,1-6,4-16,[(1, defective)]).
ls(twr(13,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(13,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(13,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(13,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(13,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(13,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(13,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(13,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(13,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(13,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(13,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(13, defective)]) :- bn(twr(12,1-6,4-16),[(12, defective)]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(13, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(12, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(12, defective), (1, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(12, defective)]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(12, defective), (1, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(11, defective), (1, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(11, defective), (2, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(11, defective), (1, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(11, defective), (2, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(10, defective), (2, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(10, defective), (3, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(10, defective), (2, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(10, defective), (3, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(9, defective), (3, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(9, defective), (4, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(9, defective), (3, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(9, defective), (4, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(8, defective), (4, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(8, defective), (5, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(8, defective), (4, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(8, defective), (5, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(7, defective), (5, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(7, defective), (6, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(7, defective), (5, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(7, defective), (6, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(6, defective), (6, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(6, defective), (7, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(6, defective), (6, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(6, defective), (7, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(5, defective), (7, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(5, defective), (8, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(5, defective), (7, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(5, defective), (8, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(4, defective), (8, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(4, defective), (9, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(4, defective), (8, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(4, defective), (9, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(3, defective), (9, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(3, defective), (10, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(3, defective), (9, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(3, defective), (10, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(2, defective), (10, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(2, defective), (11, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(2, defective), (10, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(2, defective), (11, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(1, defective), (11, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
bn(twr(13,1-6,4-16),[(1, defective), (12, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(1, defective), (11, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(13,1-6,4-16),[(1, defective), (12, none_of([defective]))]) :- bn(twr(12,1-6,4-16),[(12, none_of([defective]))]), twr_nth(13,1-6,4-16,[(1, defective)]).
ls(twr(14,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(14,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(14,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(14,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(14,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(14,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(14,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(14,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(14,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(14,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(14,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(14, defective)]) :- bn(twr(13,1-6,4-16),[(13, defective)]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(14, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(13, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(13, defective), (1, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(13, defective)]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(13, defective), (1, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(12, defective), (1, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(12, defective), (2, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(12, defective), (1, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(12, defective), (2, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(11, defective), (2, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(11, defective), (3, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(11, defective), (2, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(11, defective), (3, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(10, defective), (3, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(10, defective), (4, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(10, defective), (3, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(10, defective), (4, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(9, defective), (4, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(9, defective), (5, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(9, defective), (4, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(9, defective), (5, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(8, defective), (5, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(8, defective), (6, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(8, defective), (5, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(8, defective), (6, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(7, defective), (6, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(7, defective), (7, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(7, defective), (6, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(7, defective), (7, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(6, defective), (7, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(6, defective), (8, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(6, defective), (7, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(6, defective), (8, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(5, defective), (8, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(5, defective), (9, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(5, defective), (8, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(5, defective), (9, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(4, defective), (9, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(4, defective), (10, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(4, defective), (9, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(4, defective), (10, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(3, defective), (10, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(3, defective), (11, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(3, defective), (10, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(3, defective), (11, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(2, defective), (11, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(2, defective), (12, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(2, defective), (11, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(2, defective), (12, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(1, defective), (12, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
bn(twr(14,1-6,4-16),[(1, defective), (13, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(1, defective), (12, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(14,1-6,4-16),[(1, defective), (13, none_of([defective]))]) :- bn(twr(13,1-6,4-16),[(13, none_of([defective]))]), twr_nth(14,1-6,4-16,[(1, defective)]).
ls(twr(15,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(15,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(15,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(15,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(15,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(15,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(15,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(15,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(15,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(15,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(15,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(15, defective)]) :- bn(twr(14,1-6,4-16),[(14, defective)]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(15, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(14, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(14, defective), (1, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(14, defective)]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(14, defective), (1, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(13, defective), (1, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(13, defective), (2, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(13, defective), (1, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(13, defective), (2, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(12, defective), (2, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(12, defective), (3, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(12, defective), (2, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(12, defective), (3, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(11, defective), (3, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(11, defective), (4, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(11, defective), (3, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(11, defective), (4, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(10, defective), (4, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(10, defective), (5, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(10, defective), (4, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(10, defective), (5, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(9, defective), (5, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(9, defective), (6, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(9, defective), (5, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(9, defective), (6, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(8, defective), (6, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(8, defective), (7, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(8, defective), (6, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(8, defective), (7, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(7, defective), (7, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(7, defective), (8, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(7, defective), (7, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(7, defective), (8, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(6, defective), (8, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(6, defective), (9, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(6, defective), (8, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(6, defective), (9, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(5, defective), (9, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(5, defective), (10, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(5, defective), (9, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(5, defective), (10, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(4, defective), (10, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(4, defective), (11, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(4, defective), (10, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(4, defective), (11, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(3, defective), (11, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(3, defective), (12, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(3, defective), (11, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(3, defective), (12, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(2, defective), (12, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(2, defective), (13, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(2, defective), (12, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(2, defective), (13, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(1, defective), (13, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
bn(twr(15,1-6,4-16),[(1, defective), (14, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(1, defective), (13, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(15,1-6,4-16),[(1, defective), (14, none_of([defective]))]) :- bn(twr(14,1-6,4-16),[(14, none_of([defective]))]), twr_nth(15,1-6,4-16,[(1, defective)]).
ls(twr(16,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(16,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(16,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(16,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(16,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(16,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(16,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(16,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(16,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(16,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(16,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(16, defective)]) :- bn(twr(15,1-6,4-16),[(15, defective)]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(16, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(15, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(15, defective), (1, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(15, defective)]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(15, defective), (1, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(14, defective), (1, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(14, defective), (2, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(14, defective), (1, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(14, defective), (2, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(13, defective), (2, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(13, defective), (3, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(13, defective), (2, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(13, defective), (3, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(12, defective), (3, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(12, defective), (4, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(12, defective), (3, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(12, defective), (4, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(11, defective), (4, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(11, defective), (5, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(11, defective), (4, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(11, defective), (5, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(10, defective), (5, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(10, defective), (6, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(10, defective), (5, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(10, defective), (6, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(9, defective), (6, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(9, defective), (7, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(9, defective), (6, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(9, defective), (7, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(8, defective), (7, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(8, defective), (8, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(8, defective), (7, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(8, defective), (8, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(7, defective), (8, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(7, defective), (9, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(7, defective), (8, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(7, defective), (9, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(6, defective), (9, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(6, defective), (10, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(6, defective), (9, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(6, defective), (10, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(5, defective), (10, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(5, defective), (11, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(5, defective), (10, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(5, defective), (11, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(4, defective), (11, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(4, defective), (12, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(4, defective), (11, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(4, defective), (12, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(3, defective), (12, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(3, defective), (13, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(3, defective), (12, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(3, defective), (13, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(2, defective), (13, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(2, defective), (14, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(2, defective), (13, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(2, defective), (14, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(1, defective), (14, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
bn(twr(16,1-6,4-16),[(1, defective), (15, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(1, defective), (14, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(16,1-6,4-16),[(1, defective), (15, none_of([defective]))]) :- bn(twr(15,1-6,4-16),[(15, none_of([defective]))]), twr_nth(16,1-6,4-16,[(1, defective)]).
ls(twr(17,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(17,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(17,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(17,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(17,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(17,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(17,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(17,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(17,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(17,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(17,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(17, defective)]) :- bn(twr(16,1-6,4-16),[(16, defective)]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(17, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(16, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(16, defective), (1, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(16, defective)]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(16, defective), (1, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(15, defective), (1, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(15, defective), (2, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(15, defective), (1, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(15, defective), (2, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(14, defective), (2, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(14, defective), (3, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(14, defective), (2, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(14, defective), (3, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(13, defective), (3, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(13, defective), (4, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(13, defective), (3, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(13, defective), (4, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(12, defective), (4, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(12, defective), (5, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(12, defective), (4, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(12, defective), (5, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(11, defective), (5, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(11, defective), (6, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(11, defective), (5, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(11, defective), (6, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(10, defective), (6, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(10, defective), (7, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(10, defective), (6, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(10, defective), (7, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(9, defective), (7, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(9, defective), (8, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(9, defective), (7, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(9, defective), (8, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(8, defective), (8, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(8, defective), (9, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(8, defective), (8, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(8, defective), (9, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(7, defective), (9, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(7, defective), (10, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(7, defective), (9, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(7, defective), (10, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(6, defective), (10, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(6, defective), (11, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(6, defective), (10, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(6, defective), (11, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(5, defective), (11, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(5, defective), (12, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(5, defective), (11, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(5, defective), (12, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(4, defective), (12, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(4, defective), (13, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(4, defective), (12, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(4, defective), (13, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(3, defective), (13, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(3, defective), (14, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(3, defective), (13, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(3, defective), (14, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(2, defective), (14, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(2, defective), (15, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(2, defective), (14, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(2, defective), (15, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(1, defective), (15, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
bn(twr(17,1-6,4-16),[(1, defective), (16, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(1, defective), (15, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(17,1-6,4-16),[(1, defective), (16, none_of([defective]))]) :- bn(twr(16,1-6,4-16),[(16, none_of([defective]))]), twr_nth(17,1-6,4-16,[(1, defective)]).
ls(twr(18,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(18,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(18,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(18,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(18,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(18,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(18,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(18,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(18,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(18,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(18,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(18, defective)]) :- bn(twr(17,1-6,4-16),[(17, defective)]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(18, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(17, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(17, defective), (1, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(17, defective)]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(17, defective), (1, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(16, defective), (1, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(16, defective), (2, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(16, defective), (1, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(16, defective), (2, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(15, defective), (2, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(15, defective), (3, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(15, defective), (2, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(15, defective), (3, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(14, defective), (3, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(14, defective), (4, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(14, defective), (3, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(14, defective), (4, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(13, defective), (4, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(13, defective), (5, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(13, defective), (4, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(13, defective), (5, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(12, defective), (5, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(12, defective), (6, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(12, defective), (5, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(12, defective), (6, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(11, defective), (6, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(11, defective), (7, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(11, defective), (6, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(11, defective), (7, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(10, defective), (7, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(10, defective), (8, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(10, defective), (7, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(10, defective), (8, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(9, defective), (8, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(9, defective), (9, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(9, defective), (8, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(9, defective), (9, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(8, defective), (9, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(8, defective), (10, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(8, defective), (9, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(8, defective), (10, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(7, defective), (10, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(7, defective), (11, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(7, defective), (10, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(7, defective), (11, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(6, defective), (11, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(6, defective), (12, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(6, defective), (11, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(6, defective), (12, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(5, defective), (12, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(5, defective), (13, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(5, defective), (12, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(5, defective), (13, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(4, defective), (13, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(4, defective), (14, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(4, defective), (13, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(4, defective), (14, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(3, defective), (14, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(3, defective), (15, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(3, defective), (14, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(3, defective), (15, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(2, defective), (15, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(2, defective), (16, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(2, defective), (15, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(2, defective), (16, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(1, defective), (16, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
bn(twr(18,1-6,4-16),[(1, defective), (17, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(1, defective), (16, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(18,1-6,4-16),[(1, defective), (17, none_of([defective]))]) :- bn(twr(17,1-6,4-16),[(17, none_of([defective]))]), twr_nth(18,1-6,4-16,[(1, defective)]).
ls(twr(19,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(19,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(19,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(19,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(19,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(19,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(19,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(19,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(19,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(19,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(19,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(19, defective)]) :- bn(twr(18,1-6,4-16),[(18, defective)]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(19, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(18, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(18, defective), (1, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(18, defective)]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(18, defective), (1, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(17, defective), (1, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(17, defective), (2, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(17, defective), (1, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(17, defective), (2, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(16, defective), (2, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(16, defective), (3, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(16, defective), (2, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(16, defective), (3, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(15, defective), (3, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(15, defective), (4, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(15, defective), (3, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(15, defective), (4, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(14, defective), (4, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(14, defective), (5, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(14, defective), (4, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(14, defective), (5, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(13, defective), (5, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(13, defective), (6, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(13, defective), (5, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(13, defective), (6, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(12, defective), (6, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(12, defective), (7, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(12, defective), (6, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(12, defective), (7, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(11, defective), (7, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(11, defective), (8, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(11, defective), (7, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(11, defective), (8, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(10, defective), (8, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(10, defective), (9, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(10, defective), (8, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(10, defective), (9, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(9, defective), (9, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(9, defective), (10, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(9, defective), (9, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(9, defective), (10, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(8, defective), (10, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(8, defective), (11, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(8, defective), (10, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(8, defective), (11, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(7, defective), (11, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(7, defective), (12, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(7, defective), (11, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(7, defective), (12, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(6, defective), (12, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(6, defective), (13, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(6, defective), (12, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(6, defective), (13, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(5, defective), (13, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(5, defective), (14, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(5, defective), (13, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(5, defective), (14, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(4, defective), (14, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(4, defective), (15, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(4, defective), (14, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(4, defective), (15, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(3, defective), (15, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(3, defective), (16, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(3, defective), (15, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(3, defective), (16, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(2, defective), (16, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(2, defective), (17, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(2, defective), (16, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(2, defective), (17, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(1, defective), (17, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
bn(twr(19,1-6,4-16),[(1, defective), (18, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(1, defective), (17, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(19,1-6,4-16),[(1, defective), (18, none_of([defective]))]) :- bn(twr(18,1-6,4-16),[(18, none_of([defective]))]), twr_nth(19,1-6,4-16,[(1, defective)]).
ls(twr(20,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(20,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(20,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(20,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(20,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(20,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(20,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(20,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(20,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(20,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(20,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(20, defective)]) :- bn(twr(19,1-6,4-16),[(19, defective)]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(20, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(19, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(19, defective), (1, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(19, defective)]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(19, defective), (1, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(18, defective), (1, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(18, defective), (2, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(18, defective), (1, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(18, defective), (2, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(17, defective), (2, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(17, defective), (3, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(17, defective), (2, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(17, defective), (3, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(16, defective), (3, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(16, defective), (4, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(16, defective), (3, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(16, defective), (4, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(15, defective), (4, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(15, defective), (5, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(15, defective), (4, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(15, defective), (5, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(14, defective), (5, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(14, defective), (6, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(14, defective), (5, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(14, defective), (6, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(13, defective), (6, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(13, defective), (7, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(13, defective), (6, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(13, defective), (7, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(12, defective), (7, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(12, defective), (8, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(12, defective), (7, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(12, defective), (8, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(11, defective), (8, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(11, defective), (9, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(11, defective), (8, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(11, defective), (9, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(10, defective), (9, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(10, defective), (10, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(10, defective), (9, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(10, defective), (10, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(9, defective), (10, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(9, defective), (11, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(9, defective), (10, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(9, defective), (11, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(8, defective), (11, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(8, defective), (12, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(8, defective), (11, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(8, defective), (12, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(7, defective), (12, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(7, defective), (13, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(7, defective), (12, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(7, defective), (13, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(6, defective), (13, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(6, defective), (14, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(6, defective), (13, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(6, defective), (14, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(5, defective), (14, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(5, defective), (15, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(5, defective), (14, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(5, defective), (15, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(4, defective), (15, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(4, defective), (16, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(4, defective), (15, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(4, defective), (16, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(3, defective), (16, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(3, defective), (17, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(3, defective), (16, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(3, defective), (17, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(2, defective), (17, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(2, defective), (18, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(2, defective), (17, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(2, defective), (18, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(1, defective), (18, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
bn(twr(20,1-6,4-16),[(1, defective), (19, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(1, defective), (18, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(20,1-6,4-16),[(1, defective), (19, none_of([defective]))]) :- bn(twr(19,1-6,4-16),[(19, none_of([defective]))]), twr_nth(20,1-6,4-16,[(1, defective)]).
ls(twr(21,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(21,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(21,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(21,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(21,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(21,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(21,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(21,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(21,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(21,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(21,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(21, defective)]) :- bn(twr(20,1-6,4-16),[(20, defective)]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(21, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(20, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(20, defective), (1, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(20, defective)]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(20, defective), (1, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(19, defective), (1, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(19, defective), (2, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(19, defective), (1, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(19, defective), (2, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(18, defective), (2, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(18, defective), (3, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(18, defective), (2, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(18, defective), (3, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(17, defective), (3, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(17, defective), (4, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(17, defective), (3, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(17, defective), (4, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(16, defective), (4, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(16, defective), (5, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(16, defective), (4, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(16, defective), (5, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(15, defective), (5, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(15, defective), (6, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(15, defective), (5, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(15, defective), (6, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(14, defective), (6, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(14, defective), (7, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(14, defective), (6, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(14, defective), (7, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(13, defective), (7, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(13, defective), (8, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(13, defective), (7, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(13, defective), (8, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(12, defective), (8, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(12, defective), (9, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(12, defective), (8, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(12, defective), (9, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(11, defective), (9, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(11, defective), (10, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(11, defective), (9, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(11, defective), (10, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(10, defective), (10, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(10, defective), (11, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(10, defective), (10, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(10, defective), (11, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(9, defective), (11, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(9, defective), (12, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(9, defective), (11, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(9, defective), (12, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(8, defective), (12, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(8, defective), (13, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(8, defective), (12, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(8, defective), (13, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(7, defective), (13, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(7, defective), (14, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(7, defective), (13, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(7, defective), (14, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(6, defective), (14, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(6, defective), (15, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(6, defective), (14, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(6, defective), (15, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(5, defective), (15, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(5, defective), (16, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(5, defective), (15, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(5, defective), (16, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(4, defective), (16, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(4, defective), (17, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(4, defective), (16, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(4, defective), (17, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(3, defective), (17, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(3, defective), (18, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(3, defective), (17, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(3, defective), (18, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(2, defective), (18, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(2, defective), (19, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(2, defective), (18, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(2, defective), (19, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(1, defective), (19, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
bn(twr(21,1-6,4-16),[(1, defective), (20, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(1, defective), (19, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(21,1-6,4-16),[(1, defective), (20, none_of([defective]))]) :- bn(twr(20,1-6,4-16),[(20, none_of([defective]))]), twr_nth(21,1-6,4-16,[(1, defective)]).
ls(twr(22,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(22,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(22,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(22,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(22,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(22,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(22,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(22,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(22,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(22,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(22,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(22, defective)]) :- bn(twr(21,1-6,4-16),[(21, defective)]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(22, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(21, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(21, defective), (1, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(21, defective)]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(21, defective), (1, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(20, defective), (1, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(20, defective), (2, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(20, defective), (1, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(20, defective), (2, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(19, defective), (2, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(19, defective), (3, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(19, defective), (2, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(19, defective), (3, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(18, defective), (3, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(18, defective), (4, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(18, defective), (3, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(18, defective), (4, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(17, defective), (4, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(17, defective), (5, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(17, defective), (4, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(17, defective), (5, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(16, defective), (5, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(16, defective), (6, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(16, defective), (5, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(16, defective), (6, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(15, defective), (6, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(15, defective), (7, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(15, defective), (6, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(15, defective), (7, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(14, defective), (7, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(14, defective), (8, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(14, defective), (7, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(14, defective), (8, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(13, defective), (8, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(13, defective), (9, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(13, defective), (8, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(13, defective), (9, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(12, defective), (9, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(12, defective), (10, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(12, defective), (9, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(12, defective), (10, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(11, defective), (10, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(11, defective), (11, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(11, defective), (10, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(11, defective), (11, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(10, defective), (11, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(10, defective), (12, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(10, defective), (11, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(10, defective), (12, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(9, defective), (12, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(9, defective), (13, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(9, defective), (12, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(9, defective), (13, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(8, defective), (13, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(8, defective), (14, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(8, defective), (13, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(8, defective), (14, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(7, defective), (14, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(7, defective), (15, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(7, defective), (14, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(7, defective), (15, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(6, defective), (15, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(6, defective), (16, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(6, defective), (15, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(6, defective), (16, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(5, defective), (16, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(5, defective), (17, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(5, defective), (16, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(5, defective), (17, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(4, defective), (17, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(4, defective), (18, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(4, defective), (17, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(4, defective), (18, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(3, defective), (18, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(3, defective), (19, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(3, defective), (18, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(3, defective), (19, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(2, defective), (19, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(2, defective), (20, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(2, defective), (19, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(2, defective), (20, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(1, defective), (20, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
bn(twr(22,1-6,4-16),[(1, defective), (21, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(1, defective), (20, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(22,1-6,4-16),[(1, defective), (21, none_of([defective]))]) :- bn(twr(21,1-6,4-16),[(21, none_of([defective]))]), twr_nth(22,1-6,4-16,[(1, defective)]).
ls(twr(23,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(23,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(23,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(23,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(23,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(23,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(23,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(23,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(23,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(23,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(23,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(23, defective)]) :- bn(twr(22,1-6,4-16),[(22, defective)]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(23, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(22, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(22, defective), (1, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(22, defective)]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(22, defective), (1, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(21, defective), (1, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(21, defective), (2, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(21, defective), (1, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(21, defective), (2, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(20, defective), (2, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(20, defective), (3, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(20, defective), (2, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(20, defective), (3, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(19, defective), (3, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(19, defective), (4, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(19, defective), (3, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(19, defective), (4, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(18, defective), (4, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(18, defective), (5, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(18, defective), (4, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(18, defective), (5, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(17, defective), (5, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(17, defective), (6, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(17, defective), (5, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(17, defective), (6, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(16, defective), (6, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(16, defective), (7, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(16, defective), (6, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(16, defective), (7, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(15, defective), (7, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(15, defective), (8, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(15, defective), (7, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(15, defective), (8, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(14, defective), (8, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(14, defective), (9, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(14, defective), (8, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(14, defective), (9, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(13, defective), (9, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(13, defective), (10, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(13, defective), (9, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(13, defective), (10, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(12, defective), (10, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(12, defective), (11, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(12, defective), (10, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(12, defective), (11, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(11, defective), (11, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(11, defective), (12, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(11, defective), (11, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(11, defective), (12, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(10, defective), (12, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(10, defective), (13, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(10, defective), (12, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(10, defective), (13, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(9, defective), (13, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(9, defective), (14, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(9, defective), (13, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(9, defective), (14, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(8, defective), (14, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(8, defective), (15, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(8, defective), (14, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(8, defective), (15, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(7, defective), (15, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(7, defective), (16, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(7, defective), (15, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(7, defective), (16, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(6, defective), (16, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(6, defective), (17, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(6, defective), (16, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(6, defective), (17, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(5, defective), (17, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(5, defective), (18, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(5, defective), (17, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(5, defective), (18, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(4, defective), (18, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(4, defective), (19, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(4, defective), (18, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(4, defective), (19, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(3, defective), (19, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(3, defective), (20, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(3, defective), (19, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(3, defective), (20, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(2, defective), (20, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(2, defective), (21, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(2, defective), (20, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(2, defective), (21, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(1, defective), (21, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
bn(twr(23,1-6,4-16),[(1, defective), (22, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(1, defective), (21, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(23,1-6,4-16),[(1, defective), (22, none_of([defective]))]) :- bn(twr(22,1-6,4-16),[(22, none_of([defective]))]), twr_nth(23,1-6,4-16,[(1, defective)]).
ls(twr(24,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(24,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(24,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(24,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(24,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(24,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(24,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(24,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(24,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(24,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(24,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(24, defective)]) :- bn(twr(23,1-6,4-16),[(23, defective)]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(24, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(23, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(23, defective), (1, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(23, defective)]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(23, defective), (1, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(22, defective), (1, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(22, defective), (2, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(22, defective), (1, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(22, defective), (2, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(21, defective), (2, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(21, defective), (3, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(21, defective), (2, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(21, defective), (3, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(20, defective), (3, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(20, defective), (4, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(20, defective), (3, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(20, defective), (4, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(19, defective), (4, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(19, defective), (5, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(19, defective), (4, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(19, defective), (5, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(18, defective), (5, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(18, defective), (6, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(18, defective), (5, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(18, defective), (6, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(17, defective), (6, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(17, defective), (7, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(17, defective), (6, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(17, defective), (7, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(16, defective), (7, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(16, defective), (8, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(16, defective), (7, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(16, defective), (8, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(15, defective), (8, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(15, defective), (9, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(15, defective), (8, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(15, defective), (9, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(14, defective), (9, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(14, defective), (10, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(14, defective), (9, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(14, defective), (10, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(13, defective), (10, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(13, defective), (11, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(13, defective), (10, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(13, defective), (11, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(12, defective), (11, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(12, defective), (12, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(12, defective), (11, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(12, defective), (12, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(11, defective), (12, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(11, defective), (13, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(11, defective), (12, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(11, defective), (13, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(10, defective), (13, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(10, defective), (14, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(10, defective), (13, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(10, defective), (14, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(9, defective), (14, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(9, defective), (15, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(9, defective), (14, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(9, defective), (15, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(8, defective), (15, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(8, defective), (16, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(8, defective), (15, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(8, defective), (16, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(7, defective), (16, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(7, defective), (17, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(7, defective), (16, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(7, defective), (17, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(6, defective), (17, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(6, defective), (18, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(6, defective), (17, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(6, defective), (18, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(5, defective), (18, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(5, defective), (19, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(5, defective), (18, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(5, defective), (19, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(4, defective), (19, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(4, defective), (20, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(4, defective), (19, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(4, defective), (20, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(3, defective), (20, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(3, defective), (21, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(3, defective), (20, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(3, defective), (21, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(2, defective), (21, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(2, defective), (22, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(2, defective), (21, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(2, defective), (22, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(1, defective), (22, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
bn(twr(24,1-6,4-16),[(1, defective), (23, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(1, defective), (22, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(24,1-6,4-16),[(1, defective), (23, none_of([defective]))]) :- bn(twr(23,1-6,4-16),[(23, none_of([defective]))]), twr_nth(24,1-6,4-16,[(1, defective)]).
ls(twr(25,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(25,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(25,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(25,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(25,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(25,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(25,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(25,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(25,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(25,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(25,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(25, defective)]) :- bn(twr(24,1-6,4-16),[(24, defective)]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(25, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(24, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(24, defective), (1, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(24, defective)]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(24, defective), (1, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(23, defective), (1, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(23, defective), (2, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(23, defective), (1, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(23, defective), (2, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(22, defective), (2, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(22, defective), (3, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(22, defective), (2, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(22, defective), (3, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(21, defective), (3, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(21, defective), (4, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(21, defective), (3, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(21, defective), (4, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(20, defective), (4, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(20, defective), (5, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(20, defective), (4, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(20, defective), (5, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(19, defective), (5, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(19, defective), (6, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(19, defective), (5, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(19, defective), (6, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(18, defective), (6, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(18, defective), (7, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(18, defective), (6, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(18, defective), (7, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(17, defective), (7, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(17, defective), (8, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(17, defective), (7, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(17, defective), (8, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(16, defective), (8, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(16, defective), (9, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(16, defective), (8, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(16, defective), (9, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(15, defective), (9, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(15, defective), (10, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(15, defective), (9, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(15, defective), (10, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(14, defective), (10, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(14, defective), (11, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(14, defective), (10, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(14, defective), (11, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(13, defective), (11, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(13, defective), (12, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(13, defective), (11, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(13, defective), (12, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(12, defective), (12, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(12, defective), (13, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(12, defective), (12, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(12, defective), (13, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(11, defective), (13, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(11, defective), (14, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(11, defective), (13, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(11, defective), (14, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(10, defective), (14, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(10, defective), (15, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(10, defective), (14, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(10, defective), (15, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(9, defective), (15, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(9, defective), (16, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(9, defective), (15, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(9, defective), (16, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(8, defective), (16, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(8, defective), (17, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(8, defective), (16, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(8, defective), (17, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(7, defective), (17, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(7, defective), (18, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(7, defective), (17, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(7, defective), (18, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(6, defective), (18, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(6, defective), (19, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(6, defective), (18, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(6, defective), (19, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(5, defective), (19, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(5, defective), (20, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(5, defective), (19, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(5, defective), (20, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(4, defective), (20, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(4, defective), (21, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(4, defective), (20, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(4, defective), (21, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(3, defective), (21, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(3, defective), (22, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(3, defective), (21, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(3, defective), (22, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(2, defective), (22, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(2, defective), (23, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(2, defective), (22, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(2, defective), (23, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(1, defective), (23, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
bn(twr(25,1-6,4-16),[(1, defective), (24, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(1, defective), (23, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(25,1-6,4-16),[(1, defective), (24, none_of([defective]))]) :- bn(twr(24,1-6,4-16),[(24, none_of([defective]))]), twr_nth(25,1-6,4-16,[(1, defective)]).
ls(twr(26,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(26,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(26,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(26,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(26,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(26,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(26,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(26,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(26,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(26,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(26,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(26, defective)]) :- bn(twr(25,1-6,4-16),[(25, defective)]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(26, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(25, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(25, defective), (1, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(25, defective)]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(25, defective), (1, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(24, defective), (1, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(24, defective), (2, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(24, defective), (1, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(24, defective), (2, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(23, defective), (2, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(23, defective), (3, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(23, defective), (2, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(23, defective), (3, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(22, defective), (3, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(22, defective), (4, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(22, defective), (3, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(22, defective), (4, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(21, defective), (4, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(21, defective), (5, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(21, defective), (4, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(21, defective), (5, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(20, defective), (5, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(20, defective), (6, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(20, defective), (5, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(20, defective), (6, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(19, defective), (6, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(19, defective), (7, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(19, defective), (6, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(19, defective), (7, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(18, defective), (7, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(18, defective), (8, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(18, defective), (7, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(18, defective), (8, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(17, defective), (8, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(17, defective), (9, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(17, defective), (8, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(17, defective), (9, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(16, defective), (9, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(16, defective), (10, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(16, defective), (9, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(16, defective), (10, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(15, defective), (10, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(15, defective), (11, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(15, defective), (10, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(15, defective), (11, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(14, defective), (11, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(14, defective), (12, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(14, defective), (11, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(14, defective), (12, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(13, defective), (12, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(13, defective), (13, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(13, defective), (12, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(13, defective), (13, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(12, defective), (13, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(12, defective), (14, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(12, defective), (13, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(12, defective), (14, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(11, defective), (14, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(11, defective), (15, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(11, defective), (14, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(11, defective), (15, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(10, defective), (15, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(10, defective), (16, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(10, defective), (15, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(10, defective), (16, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(9, defective), (16, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(9, defective), (17, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(9, defective), (16, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(9, defective), (17, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(8, defective), (17, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(8, defective), (18, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(8, defective), (17, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(8, defective), (18, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(7, defective), (18, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(7, defective), (19, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(7, defective), (18, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(7, defective), (19, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(6, defective), (19, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(6, defective), (20, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(6, defective), (19, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(6, defective), (20, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(5, defective), (20, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(5, defective), (21, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(5, defective), (20, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(5, defective), (21, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(4, defective), (21, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(4, defective), (22, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(4, defective), (21, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(4, defective), (22, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(3, defective), (22, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(3, defective), (23, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(3, defective), (22, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(3, defective), (23, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(2, defective), (23, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(2, defective), (24, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(2, defective), (23, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(2, defective), (24, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(1, defective), (24, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
bn(twr(26,1-6,4-16),[(1, defective), (25, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(1, defective), (24, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(26,1-6,4-16),[(1, defective), (25, none_of([defective]))]) :- bn(twr(25,1-6,4-16),[(25, none_of([defective]))]), twr_nth(26,1-6,4-16,[(1, defective)]).
ls(twr(27,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(27,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(27,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(27,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(27,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(27,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(27,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(27,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(27,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(27,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(27,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(27, defective)]) :- bn(twr(26,1-6,4-16),[(26, defective)]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(27, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(26, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(26, defective), (1, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(26, defective)]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(26, defective), (1, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(25, defective), (1, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(25, defective), (2, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(25, defective), (1, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(25, defective), (2, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(24, defective), (2, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(24, defective), (3, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(24, defective), (2, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(24, defective), (3, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(23, defective), (3, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(23, defective), (4, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(23, defective), (3, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(23, defective), (4, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(22, defective), (4, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(22, defective), (5, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(22, defective), (4, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(22, defective), (5, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(21, defective), (5, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(21, defective), (6, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(21, defective), (5, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(21, defective), (6, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(20, defective), (6, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(20, defective), (7, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(20, defective), (6, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(20, defective), (7, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(19, defective), (7, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(19, defective), (8, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(19, defective), (7, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(19, defective), (8, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(18, defective), (8, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(18, defective), (9, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(18, defective), (8, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(18, defective), (9, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(17, defective), (9, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(17, defective), (10, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(17, defective), (9, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(17, defective), (10, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(16, defective), (10, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(16, defective), (11, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(16, defective), (10, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(16, defective), (11, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(15, defective), (11, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(15, defective), (12, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(15, defective), (11, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(15, defective), (12, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(14, defective), (12, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(14, defective), (13, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(14, defective), (12, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(14, defective), (13, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(13, defective), (13, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(13, defective), (14, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(13, defective), (13, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(13, defective), (14, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(12, defective), (14, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(12, defective), (15, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(12, defective), (14, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(12, defective), (15, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(11, defective), (15, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(11, defective), (16, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(11, defective), (15, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(11, defective), (16, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(10, defective), (16, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(10, defective), (17, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(10, defective), (16, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(10, defective), (17, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(9, defective), (17, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(9, defective), (18, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(9, defective), (17, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(9, defective), (18, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(8, defective), (18, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(8, defective), (19, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(8, defective), (18, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(8, defective), (19, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(7, defective), (19, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(7, defective), (20, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(7, defective), (19, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(7, defective), (20, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(6, defective), (20, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(6, defective), (21, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(6, defective), (20, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(6, defective), (21, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(5, defective), (21, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(5, defective), (22, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(5, defective), (21, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(5, defective), (22, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(4, defective), (22, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(4, defective), (23, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(4, defective), (22, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(4, defective), (23, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(3, defective), (23, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(3, defective), (24, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(3, defective), (23, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(3, defective), (24, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(2, defective), (24, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(2, defective), (25, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(2, defective), (24, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(2, defective), (25, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(1, defective), (25, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
bn(twr(27,1-6,4-16),[(1, defective), (26, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(1, defective), (25, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(27,1-6,4-16),[(1, defective), (26, none_of([defective]))]) :- bn(twr(26,1-6,4-16),[(26, none_of([defective]))]), twr_nth(27,1-6,4-16,[(1, defective)]).
ls(twr(28,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(28,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(28,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(28,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(28,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(28,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(28,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(28,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(28,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(28,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(28,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(28, defective)]) :- bn(twr(27,1-6,4-16),[(27, defective)]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(28, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(27, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(27, defective), (1, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(27, defective)]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(27, defective), (1, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(26, defective), (1, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(26, defective), (2, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(26, defective), (1, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(26, defective), (2, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(25, defective), (2, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(25, defective), (3, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(25, defective), (2, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(25, defective), (3, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(24, defective), (3, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(24, defective), (4, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(24, defective), (3, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(24, defective), (4, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(23, defective), (4, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(23, defective), (5, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(23, defective), (4, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(23, defective), (5, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(22, defective), (5, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(22, defective), (6, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(22, defective), (5, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(22, defective), (6, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(21, defective), (6, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(21, defective), (7, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(21, defective), (6, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(21, defective), (7, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(20, defective), (7, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(20, defective), (8, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(20, defective), (7, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(20, defective), (8, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(19, defective), (8, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(19, defective), (9, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(19, defective), (8, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(19, defective), (9, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(18, defective), (9, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(18, defective), (10, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(18, defective), (9, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(18, defective), (10, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(17, defective), (10, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(17, defective), (11, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(17, defective), (10, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(17, defective), (11, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(16, defective), (11, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(16, defective), (12, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(16, defective), (11, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(16, defective), (12, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(15, defective), (12, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(15, defective), (13, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(15, defective), (12, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(15, defective), (13, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(14, defective), (13, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(14, defective), (14, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(14, defective), (13, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(14, defective), (14, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(13, defective), (14, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(13, defective), (15, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(13, defective), (14, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(13, defective), (15, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(12, defective), (15, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(12, defective), (16, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(12, defective), (15, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(12, defective), (16, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(11, defective), (16, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(11, defective), (17, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(11, defective), (16, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(11, defective), (17, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(10, defective), (17, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(10, defective), (18, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(10, defective), (17, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(10, defective), (18, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(9, defective), (18, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(9, defective), (19, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(9, defective), (18, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(9, defective), (19, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(8, defective), (19, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(8, defective), (20, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(8, defective), (19, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(8, defective), (20, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(7, defective), (20, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(7, defective), (21, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(7, defective), (20, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(7, defective), (21, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(6, defective), (21, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(6, defective), (22, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(6, defective), (21, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(6, defective), (22, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(5, defective), (22, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(5, defective), (23, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(5, defective), (22, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(5, defective), (23, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(4, defective), (23, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(4, defective), (24, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(4, defective), (23, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(4, defective), (24, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(3, defective), (24, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(3, defective), (25, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(3, defective), (24, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(3, defective), (25, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(2, defective), (25, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(2, defective), (26, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(2, defective), (25, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(2, defective), (26, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(1, defective), (26, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
bn(twr(28,1-6,4-16),[(1, defective), (27, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(1, defective), (26, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(28,1-6,4-16),[(1, defective), (27, none_of([defective]))]) :- bn(twr(27,1-6,4-16),[(27, none_of([defective]))]), twr_nth(28,1-6,4-16,[(1, defective)]).
ls(twr(29,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(29,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(29,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(29,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(29,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(29,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(29,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(29,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(29,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(29,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(29,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(29, defective)]) :- bn(twr(28,1-6,4-16),[(28, defective)]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(29, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(28, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(28, defective), (1, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(28, defective)]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(28, defective), (1, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(27, defective), (1, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(27, defective), (2, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(27, defective), (1, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(27, defective), (2, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(26, defective), (2, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(26, defective), (3, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(26, defective), (2, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(26, defective), (3, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(25, defective), (3, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(25, defective), (4, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(25, defective), (3, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(25, defective), (4, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(24, defective), (4, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(24, defective), (5, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(24, defective), (4, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(24, defective), (5, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(23, defective), (5, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(23, defective), (6, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(23, defective), (5, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(23, defective), (6, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(22, defective), (6, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(22, defective), (7, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(22, defective), (6, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(22, defective), (7, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(21, defective), (7, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(21, defective), (8, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(21, defective), (7, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(21, defective), (8, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(20, defective), (8, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(20, defective), (9, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(20, defective), (8, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(20, defective), (9, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(19, defective), (9, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(19, defective), (10, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(19, defective), (9, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(19, defective), (10, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(18, defective), (10, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(18, defective), (11, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(18, defective), (10, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(18, defective), (11, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(17, defective), (11, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(17, defective), (12, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(17, defective), (11, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(17, defective), (12, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(16, defective), (12, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(16, defective), (13, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(16, defective), (12, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(16, defective), (13, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(15, defective), (13, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(15, defective), (14, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(15, defective), (13, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(15, defective), (14, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(14, defective), (14, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(14, defective), (15, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(14, defective), (14, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(14, defective), (15, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(13, defective), (15, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(13, defective), (16, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(13, defective), (15, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(13, defective), (16, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(12, defective), (16, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(12, defective), (17, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(12, defective), (16, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(12, defective), (17, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(11, defective), (17, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(11, defective), (18, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(11, defective), (17, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(11, defective), (18, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(10, defective), (18, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(10, defective), (19, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(10, defective), (18, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(10, defective), (19, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(9, defective), (19, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(9, defective), (20, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(9, defective), (19, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(9, defective), (20, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(8, defective), (20, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(8, defective), (21, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(8, defective), (20, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(8, defective), (21, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(7, defective), (21, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(7, defective), (22, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(7, defective), (21, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(7, defective), (22, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(6, defective), (22, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(6, defective), (23, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(6, defective), (22, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(6, defective), (23, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(5, defective), (23, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(5, defective), (24, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(5, defective), (23, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(5, defective), (24, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(4, defective), (24, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(4, defective), (25, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(4, defective), (24, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(4, defective), (25, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(3, defective), (25, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(3, defective), (26, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(3, defective), (25, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(3, defective), (26, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(2, defective), (26, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(2, defective), (27, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(2, defective), (26, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(2, defective), (27, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(1, defective), (27, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
bn(twr(29,1-6,4-16),[(1, defective), (28, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(1, defective), (27, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(29,1-6,4-16),[(1, defective), (28, none_of([defective]))]) :- bn(twr(28,1-6,4-16),[(28, none_of([defective]))]), twr_nth(29,1-6,4-16,[(1, defective)]).
ls(twr(30,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(30,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(30,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(30,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(30,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(30,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(30,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(30,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(30,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(30,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(30,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(30, defective)]) :- bn(twr(29,1-6,4-16),[(29, defective)]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(30, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(29, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(29, defective), (1, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(29, defective)]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(29, defective), (1, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(28, defective), (1, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(28, defective), (2, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(28, defective), (1, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(28, defective), (2, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(27, defective), (2, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(27, defective), (3, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(27, defective), (2, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(27, defective), (3, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(26, defective), (3, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(26, defective), (4, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(26, defective), (3, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(26, defective), (4, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(25, defective), (4, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(25, defective), (5, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(25, defective), (4, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(25, defective), (5, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(24, defective), (5, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(24, defective), (6, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(24, defective), (5, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(24, defective), (6, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(23, defective), (6, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(23, defective), (7, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(23, defective), (6, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(23, defective), (7, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(22, defective), (7, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(22, defective), (8, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(22, defective), (7, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(22, defective), (8, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(21, defective), (8, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(21, defective), (9, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(21, defective), (8, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(21, defective), (9, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(20, defective), (9, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(20, defective), (10, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(20, defective), (9, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(20, defective), (10, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(19, defective), (10, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(19, defective), (11, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(19, defective), (10, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(19, defective), (11, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(18, defective), (11, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(18, defective), (12, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(18, defective), (11, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(18, defective), (12, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(17, defective), (12, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(17, defective), (13, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(17, defective), (12, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(17, defective), (13, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(16, defective), (13, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(16, defective), (14, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(16, defective), (13, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(16, defective), (14, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(15, defective), (14, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(15, defective), (15, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(15, defective), (14, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(15, defective), (15, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(14, defective), (15, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(14, defective), (16, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(14, defective), (15, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(14, defective), (16, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(13, defective), (16, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(13, defective), (17, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(13, defective), (16, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(13, defective), (17, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(12, defective), (17, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(12, defective), (18, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(12, defective), (17, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(12, defective), (18, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(11, defective), (18, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(11, defective), (19, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(11, defective), (18, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(11, defective), (19, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(10, defective), (19, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(10, defective), (20, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(10, defective), (19, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(10, defective), (20, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(9, defective), (20, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(9, defective), (21, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(9, defective), (20, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(9, defective), (21, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(8, defective), (21, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(8, defective), (22, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(8, defective), (21, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(8, defective), (22, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(7, defective), (22, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(7, defective), (23, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(7, defective), (22, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(7, defective), (23, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(6, defective), (23, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(6, defective), (24, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(6, defective), (23, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(6, defective), (24, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(5, defective), (24, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(5, defective), (25, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(5, defective), (24, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(5, defective), (25, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(4, defective), (25, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(4, defective), (26, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(4, defective), (25, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(4, defective), (26, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(3, defective), (26, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(3, defective), (27, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(3, defective), (26, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(3, defective), (27, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(2, defective), (27, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(2, defective), (28, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(2, defective), (27, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(2, defective), (28, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(1, defective), (28, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
bn(twr(30,1-6,4-16),[(1, defective), (29, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(1, defective), (28, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(30,1-6,4-16),[(1, defective), (29, none_of([defective]))]) :- bn(twr(29,1-6,4-16),[(29, none_of([defective]))]), twr_nth(30,1-6,4-16,[(1, defective)]).
ls(twr(31,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(31,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(31,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(31,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(31,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(31,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(31,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(31,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(31,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(31,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(31,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(31, defective)]) :- bn(twr(30,1-6,4-16),[(30, defective)]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(31, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(30, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(30, defective), (1, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(30, defective)]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(30, defective), (1, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(29, defective), (1, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(29, defective), (2, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(29, defective), (1, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(29, defective), (2, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(28, defective), (2, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(28, defective), (3, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(28, defective), (2, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(28, defective), (3, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(27, defective), (3, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(27, defective), (4, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(27, defective), (3, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(27, defective), (4, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(26, defective), (4, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(26, defective), (5, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(26, defective), (4, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(26, defective), (5, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(25, defective), (5, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(25, defective), (6, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(25, defective), (5, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(25, defective), (6, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(24, defective), (6, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(24, defective), (7, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(24, defective), (6, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(24, defective), (7, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(23, defective), (7, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(23, defective), (8, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(23, defective), (7, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(23, defective), (8, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(22, defective), (8, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(22, defective), (9, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(22, defective), (8, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(22, defective), (9, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(21, defective), (9, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(21, defective), (10, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(21, defective), (9, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(21, defective), (10, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(20, defective), (10, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(20, defective), (11, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(20, defective), (10, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(20, defective), (11, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(19, defective), (11, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(19, defective), (12, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(19, defective), (11, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(19, defective), (12, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(18, defective), (12, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(18, defective), (13, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(18, defective), (12, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(18, defective), (13, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(17, defective), (13, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(17, defective), (14, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(17, defective), (13, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(17, defective), (14, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(16, defective), (14, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(16, defective), (15, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(16, defective), (14, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(16, defective), (15, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(15, defective), (15, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(15, defective), (16, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(15, defective), (15, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(15, defective), (16, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(14, defective), (16, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(14, defective), (17, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(14, defective), (16, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(14, defective), (17, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(13, defective), (17, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(13, defective), (18, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(13, defective), (17, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(13, defective), (18, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(12, defective), (18, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(12, defective), (19, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(12, defective), (18, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(12, defective), (19, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(11, defective), (19, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(11, defective), (20, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(11, defective), (19, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(11, defective), (20, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(10, defective), (20, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(10, defective), (21, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(10, defective), (20, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(10, defective), (21, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(9, defective), (21, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(9, defective), (22, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(9, defective), (21, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(9, defective), (22, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(8, defective), (22, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(8, defective), (23, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(8, defective), (22, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(8, defective), (23, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(7, defective), (23, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(7, defective), (24, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(7, defective), (23, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(7, defective), (24, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(6, defective), (24, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(6, defective), (25, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(6, defective), (24, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(6, defective), (25, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(5, defective), (25, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(5, defective), (26, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(5, defective), (25, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(5, defective), (26, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(4, defective), (26, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(4, defective), (27, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(4, defective), (26, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(4, defective), (27, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(3, defective), (27, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(3, defective), (28, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(3, defective), (27, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(3, defective), (28, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(2, defective), (28, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(2, defective), (29, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(2, defective), (28, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(2, defective), (29, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(1, defective), (29, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
bn(twr(31,1-6,4-16),[(1, defective), (30, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(1, defective), (29, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(31,1-6,4-16),[(1, defective), (30, none_of([defective]))]) :- bn(twr(30,1-6,4-16),[(30, none_of([defective]))]), twr_nth(31,1-6,4-16,[(1, defective)]).
ls(twr(32,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(32,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(32,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(32,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(32,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(32,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(32,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(32,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(32,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(32,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(32,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(32, defective)]) :- bn(twr(31,1-6,4-16),[(31, defective)]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(32, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(31, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(31, defective), (1, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(31, defective)]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(31, defective), (1, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(30, defective), (1, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(30, defective), (2, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(30, defective), (1, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(30, defective), (2, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(29, defective), (2, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(29, defective), (3, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(29, defective), (2, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(29, defective), (3, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(28, defective), (3, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(28, defective), (4, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(28, defective), (3, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(28, defective), (4, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(27, defective), (4, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(27, defective), (5, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(27, defective), (4, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(27, defective), (5, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(26, defective), (5, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(26, defective), (6, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(26, defective), (5, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(26, defective), (6, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(25, defective), (6, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(25, defective), (7, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(25, defective), (6, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(25, defective), (7, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(24, defective), (7, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(24, defective), (8, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(24, defective), (7, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(24, defective), (8, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(23, defective), (8, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(23, defective), (9, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(23, defective), (8, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(23, defective), (9, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(22, defective), (9, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(22, defective), (10, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(22, defective), (9, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(22, defective), (10, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(21, defective), (10, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(21, defective), (11, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(21, defective), (10, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(21, defective), (11, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(20, defective), (11, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(20, defective), (12, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(20, defective), (11, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(20, defective), (12, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(19, defective), (12, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(19, defective), (13, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(19, defective), (12, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(19, defective), (13, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(18, defective), (13, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(18, defective), (14, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(18, defective), (13, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(18, defective), (14, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(17, defective), (14, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(17, defective), (15, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(17, defective), (14, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(17, defective), (15, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(16, defective), (15, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(16, defective), (16, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(16, defective), (15, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(16, defective), (16, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(15, defective), (16, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(15, defective), (17, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(15, defective), (16, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(15, defective), (17, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(14, defective), (17, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(14, defective), (18, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(14, defective), (17, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(14, defective), (18, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(13, defective), (18, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(13, defective), (19, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(13, defective), (18, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(13, defective), (19, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(12, defective), (19, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(12, defective), (20, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(12, defective), (19, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(12, defective), (20, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(11, defective), (20, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(11, defective), (21, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(11, defective), (20, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(11, defective), (21, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(10, defective), (21, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(10, defective), (22, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(10, defective), (21, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(10, defective), (22, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(9, defective), (22, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(9, defective), (23, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(9, defective), (22, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(9, defective), (23, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(8, defective), (23, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(8, defective), (24, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(8, defective), (23, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(8, defective), (24, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(7, defective), (24, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(7, defective), (25, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(7, defective), (24, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(7, defective), (25, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(6, defective), (25, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(6, defective), (26, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(6, defective), (25, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(6, defective), (26, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(5, defective), (26, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(5, defective), (27, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(5, defective), (26, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(5, defective), (27, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(4, defective), (27, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(4, defective), (28, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(4, defective), (27, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(4, defective), (28, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(3, defective), (28, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(3, defective), (29, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(3, defective), (28, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(3, defective), (29, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(2, defective), (29, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(2, defective), (30, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(2, defective), (29, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(2, defective), (30, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(1, defective), (30, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
bn(twr(32,1-6,4-16),[(1, defective), (31, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(1, defective), (30, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(32,1-6,4-16),[(1, defective), (31, none_of([defective]))]) :- bn(twr(31,1-6,4-16),[(31, none_of([defective]))]), twr_nth(32,1-6,4-16,[(1, defective)]).
ls(twr(33,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(33,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(33,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(33,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(33,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(33,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(33,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(33,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(33,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(33,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(33,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(33, defective)]) :- bn(twr(32,1-6,4-16),[(32, defective)]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(33, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(32, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(32, defective), (1, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(32, defective)]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(32, defective), (1, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(31, defective), (1, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(31, defective), (2, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(31, defective), (1, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(31, defective), (2, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(30, defective), (2, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(30, defective), (3, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(30, defective), (2, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(30, defective), (3, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(29, defective), (3, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(29, defective), (4, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(29, defective), (3, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(29, defective), (4, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(28, defective), (4, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(28, defective), (5, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(28, defective), (4, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(28, defective), (5, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(27, defective), (5, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(27, defective), (6, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(27, defective), (5, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(27, defective), (6, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(26, defective), (6, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(26, defective), (7, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(26, defective), (6, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(26, defective), (7, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(25, defective), (7, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(25, defective), (8, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(25, defective), (7, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(25, defective), (8, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(24, defective), (8, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(24, defective), (9, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(24, defective), (8, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(24, defective), (9, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(23, defective), (9, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(23, defective), (10, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(23, defective), (9, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(23, defective), (10, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(22, defective), (10, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(22, defective), (11, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(22, defective), (10, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(22, defective), (11, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(21, defective), (11, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(21, defective), (12, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(21, defective), (11, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(21, defective), (12, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(20, defective), (12, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(20, defective), (13, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(20, defective), (12, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(20, defective), (13, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(19, defective), (13, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(19, defective), (14, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(19, defective), (13, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(19, defective), (14, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(18, defective), (14, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(18, defective), (15, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(18, defective), (14, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(18, defective), (15, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(17, defective), (15, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(17, defective), (16, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(17, defective), (15, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(17, defective), (16, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(16, defective), (16, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(16, defective), (17, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(16, defective), (16, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(16, defective), (17, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(15, defective), (17, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(15, defective), (18, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(15, defective), (17, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(15, defective), (18, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(14, defective), (18, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(14, defective), (19, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(14, defective), (18, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(14, defective), (19, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(13, defective), (19, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(13, defective), (20, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(13, defective), (19, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(13, defective), (20, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(12, defective), (20, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(12, defective), (21, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(12, defective), (20, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(12, defective), (21, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(11, defective), (21, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(11, defective), (22, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(11, defective), (21, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(11, defective), (22, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(10, defective), (22, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(10, defective), (23, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(10, defective), (22, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(10, defective), (23, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(9, defective), (23, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(9, defective), (24, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(9, defective), (23, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(9, defective), (24, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(8, defective), (24, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(8, defective), (25, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(8, defective), (24, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(8, defective), (25, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(7, defective), (25, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(7, defective), (26, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(7, defective), (25, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(7, defective), (26, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(6, defective), (26, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(6, defective), (27, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(6, defective), (26, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(6, defective), (27, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(5, defective), (27, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(5, defective), (28, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(5, defective), (27, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(5, defective), (28, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(4, defective), (28, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(4, defective), (29, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(4, defective), (28, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(4, defective), (29, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(3, defective), (29, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(3, defective), (30, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(3, defective), (29, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(3, defective), (30, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(2, defective), (30, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(2, defective), (31, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(2, defective), (30, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(2, defective), (31, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(1, defective), (31, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
bn(twr(33,1-6,4-16),[(1, defective), (32, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(1, defective), (31, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(33,1-6,4-16),[(1, defective), (32, none_of([defective]))]) :- bn(twr(32,1-6,4-16),[(32, none_of([defective]))]), twr_nth(33,1-6,4-16,[(1, defective)]).
ls(twr(34,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(34,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(34,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(34,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(34,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(34,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(34,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(34,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(34,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(34,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(34,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(34, defective)]) :- bn(twr(33,1-6,4-16),[(33, defective)]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(33, defective), (1, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(33, defective)]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(33, defective), (1, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(32, defective), (1, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(32, defective), (2, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(32, defective), (1, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(32, defective), (2, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(31, defective), (2, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(31, defective), (3, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(31, defective), (2, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(31, defective), (3, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(30, defective), (3, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(30, defective), (4, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(30, defective), (3, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(30, defective), (4, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(29, defective), (4, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(29, defective), (5, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(29, defective), (4, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(29, defective), (5, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(28, defective), (5, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(28, defective), (6, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(28, defective), (5, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(28, defective), (6, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(27, defective), (6, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(27, defective), (7, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(27, defective), (6, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(27, defective), (7, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(26, defective), (7, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(26, defective), (8, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(26, defective), (7, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(26, defective), (8, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(25, defective), (8, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(25, defective), (9, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(25, defective), (8, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(25, defective), (9, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(24, defective), (9, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(24, defective), (10, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(24, defective), (9, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(24, defective), (10, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(23, defective), (10, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(23, defective), (11, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(23, defective), (10, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(23, defective), (11, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(22, defective), (11, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(22, defective), (12, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(22, defective), (11, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(22, defective), (12, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(21, defective), (12, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(21, defective), (13, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(21, defective), (12, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(21, defective), (13, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(20, defective), (13, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(20, defective), (14, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(20, defective), (13, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(20, defective), (14, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(19, defective), (14, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(19, defective), (15, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(19, defective), (14, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(19, defective), (15, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(18, defective), (15, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(18, defective), (16, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(18, defective), (15, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(18, defective), (16, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(17, defective), (16, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(17, defective), (17, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(17, defective), (16, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(17, defective), (17, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(16, defective), (17, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(16, defective), (18, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(16, defective), (17, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(16, defective), (18, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(15, defective), (18, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(15, defective), (19, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(15, defective), (18, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(15, defective), (19, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(14, defective), (19, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(14, defective), (20, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(14, defective), (19, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(14, defective), (20, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(13, defective), (20, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(13, defective), (21, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(13, defective), (20, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(13, defective), (21, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(12, defective), (21, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(12, defective), (22, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(12, defective), (21, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(12, defective), (22, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(11, defective), (22, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(11, defective), (23, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(11, defective), (22, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(11, defective), (23, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(10, defective), (23, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(10, defective), (24, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(10, defective), (23, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(10, defective), (24, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(9, defective), (24, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(9, defective), (25, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(9, defective), (24, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(9, defective), (25, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(8, defective), (25, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(8, defective), (26, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(8, defective), (25, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(8, defective), (26, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(7, defective), (26, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(7, defective), (27, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(7, defective), (26, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(7, defective), (27, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(6, defective), (27, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(6, defective), (28, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(6, defective), (27, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(6, defective), (28, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(5, defective), (28, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(5, defective), (29, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(5, defective), (28, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(5, defective), (29, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(4, defective), (29, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(4, defective), (30, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(4, defective), (29, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(4, defective), (30, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(3, defective), (30, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(3, defective), (31, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(3, defective), (30, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(3, defective), (31, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(2, defective), (31, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(2, defective), (32, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(2, defective), (31, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(2, defective), (32, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(1, defective), (32, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
bn(twr(34,1-6,4-16),[(1, defective), (33, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(1, defective), (32, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(34,1-6,4-16),[(1, defective), (33, none_of([defective]))]) :- bn(twr(33,1-6,4-16),[(33, none_of([defective]))]), twr_nth(34,1-6,4-16,[(1, defective)]).
ls(twr(35,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- base.
ls(twr(35,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- \+base.
lsw(twr(35,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]) :- ls(twr(35,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(35,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]) :- ls(twr(35,1-6,4-16),20000.0,[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
lsw(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]) :- lsw(twr(35,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],defective,[none_of([defective])]).
lsw(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]) :- lsw(twr(35,1-6,4-16),[400, 19600.0],[defective, none_of([defective])],none_of([defective]),[defective]).
select_uniform_ms(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]) :- lsw(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[none_of([defective])]).
select_uniform_ms(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]) :- lsw(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[defective]).
twr_nth(35,1-6,4-16,[(1, defective)]) :- select_uniform_ms(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],defective,[(399, defective), (19600.0, none_of([defective]))]).
twr_nth(35,1-6,4-16,[(1, none_of([defective]))]) :- select_uniform_ms(twr(35,1-6,4-16),[(400, defective), (19600.0, none_of([defective]))],none_of([defective]),[(400, defective), (19599, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(35, defective)]) :- bn(twr(34,1-6,4-16),[(34, defective)]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(34, defective), (1, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(34, defective)]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(34, defective), (1, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(33, defective), (1, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(33, defective), (2, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(33, defective), (1, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(33, defective), (2, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(32, defective), (2, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(32, defective), (3, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(32, defective), (2, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(32, defective), (3, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(31, defective), (3, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(31, defective), (4, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(31, defective), (3, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(31, defective), (4, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(30, defective), (4, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(30, defective), (5, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(30, defective), (4, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(30, defective), (5, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(29, defective), (5, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(29, defective), (6, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(29, defective), (5, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(29, defective), (6, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(28, defective), (6, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(28, defective), (7, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(28, defective), (6, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(28, defective), (7, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(27, defective), (7, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(27, defective), (8, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(27, defective), (7, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(27, defective), (8, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(26, defective), (8, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(26, defective), (9, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(26, defective), (8, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(26, defective), (9, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(25, defective), (9, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(25, defective), (10, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(25, defective), (9, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(25, defective), (10, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(24, defective), (10, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(24, defective), (11, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(24, defective), (10, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(24, defective), (11, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(23, defective), (11, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(23, defective), (12, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(23, defective), (11, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(23, defective), (12, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(22, defective), (12, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(22, defective), (13, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(22, defective), (12, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(22, defective), (13, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(21, defective), (13, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(21, defective), (14, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(21, defective), (13, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(21, defective), (14, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(20, defective), (14, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(20, defective), (15, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(20, defective), (14, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(20, defective), (15, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(19, defective), (15, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(19, defective), (16, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(19, defective), (15, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(19, defective), (16, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(18, defective), (16, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(18, defective), (17, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(18, defective), (16, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(18, defective), (17, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(17, defective), (17, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(17, defective), (18, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(17, defective), (17, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(17, defective), (18, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(16, defective), (18, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(16, defective), (19, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(16, defective), (18, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(16, defective), (19, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(15, defective), (19, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(15, defective), (20, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(15, defective), (19, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(15, defective), (20, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(14, defective), (20, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(14, defective), (21, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(14, defective), (20, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(14, defective), (21, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(13, defective), (21, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(13, defective), (22, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(13, defective), (21, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(13, defective), (22, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(12, defective), (22, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(12, defective), (23, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(12, defective), (22, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(12, defective), (23, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(11, defective), (23, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(11, defective), (24, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(11, defective), (23, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(11, defective), (24, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(10, defective), (24, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(10, defective), (25, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(10, defective), (24, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(10, defective), (25, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(9, defective), (25, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(9, defective), (26, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(9, defective), (25, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(9, defective), (26, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(8, defective), (26, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(8, defective), (27, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(8, defective), (26, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(8, defective), (27, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(7, defective), (27, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(7, defective), (28, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(7, defective), (27, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(7, defective), (28, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(6, defective), (28, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(6, defective), (29, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(6, defective), (28, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(6, defective), (29, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(5, defective), (29, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(5, defective), (30, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(5, defective), (29, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(5, defective), (30, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(4, defective), (30, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(4, defective), (31, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(4, defective), (30, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(4, defective), (31, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(3, defective), (31, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(3, defective), (32, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(3, defective), (31, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(3, defective), (32, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(2, defective), (32, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(twr(35,1-6,4-16),[(2, defective), (33, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(2, defective), (32, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, none_of([defective]))]).
bn(twr(35,1-6,4-16),[(2, defective), (33, none_of([defective]))]) :- bn(twr(34,1-6,4-16),[(1, defective), (33, none_of([defective]))]), twr_nth(35,1-6,4-16,[(1, defective)]).
bn(4-16,[(35, defective)]) :- bn(twr(35,1-6,4-16),[(35, defective)]).
bn(4-16,[(34, defective), (1, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(34, defective), (1, none_of([defective]))]).
bn(4-16,[(33, defective), (2, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(33, defective), (2, none_of([defective]))]).
bn(4-16,[(32, defective), (3, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(32, defective), (3, none_of([defective]))]).
bn(4-16,[(31, defective), (4, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(31, defective), (4, none_of([defective]))]).
bn(4-16,[(30, defective), (5, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(30, defective), (5, none_of([defective]))]).
bn(4-16,[(29, defective), (6, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(29, defective), (6, none_of([defective]))]).
bn(4-16,[(28, defective), (7, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(28, defective), (7, none_of([defective]))]).
bn(4-16,[(27, defective), (8, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(27, defective), (8, none_of([defective]))]).
bn(4-16,[(26, defective), (9, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(26, defective), (9, none_of([defective]))]).
bn(4-16,[(25, defective), (10, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(25, defective), (10, none_of([defective]))]).
bn(4-16,[(24, defective), (11, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(24, defective), (11, none_of([defective]))]).
bn(4-16,[(23, defective), (12, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(23, defective), (12, none_of([defective]))]).
bn(4-16,[(22, defective), (13, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(22, defective), (13, none_of([defective]))]).
bn(4-16,[(21, defective), (14, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(21, defective), (14, none_of([defective]))]).
bn(4-16,[(20, defective), (15, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(20, defective), (15, none_of([defective]))]).
bn(4-16,[(19, defective), (16, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(19, defective), (16, none_of([defective]))]).
bn(4-16,[(18, defective), (17, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(18, defective), (17, none_of([defective]))]).
bn(4-16,[(17, defective), (18, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(17, defective), (18, none_of([defective]))]).
bn(4-16,[(16, defective), (19, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(16, defective), (19, none_of([defective]))]).
bn(4-16,[(15, defective), (20, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(15, defective), (20, none_of([defective]))]).
bn(4-16,[(14, defective), (21, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(14, defective), (21, none_of([defective]))]).
bn(4-16,[(13, defective), (22, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(13, defective), (22, none_of([defective]))]).
bn(4-16,[(12, defective), (23, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(12, defective), (23, none_of([defective]))]).
bn(4-16,[(11, defective), (24, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(11, defective), (24, none_of([defective]))]).
bn(4-16,[(10, defective), (25, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(10, defective), (25, none_of([defective]))]).
bn(4-16,[(9, defective), (26, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(9, defective), (26, none_of([defective]))]).
bn(4-16,[(8, defective), (27, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(8, defective), (27, none_of([defective]))]).
bn(4-16,[(7, defective), (28, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(7, defective), (28, none_of([defective]))]).
bn(4-16,[(6, defective), (29, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(6, defective), (29, none_of([defective]))]).
bn(4-16,[(5, defective), (30, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(5, defective), (30, none_of([defective]))]).
bn(4-16,[(4, defective), (31, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(4, defective), (31, none_of([defective]))]).
bn(4-16,[(3, defective), (32, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(3, defective), (32, none_of([defective]))]).
bn(4-16,[(2, defective), (33, none_of([defective]))]) :- bn(twr(35,1-6,4-16),[(2, defective), (33, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(35, defective)]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(34, defective), (1, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(33, defective), (2, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(32, defective), (3, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(31, defective), (4, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(30, defective), (5, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(29, defective), (6, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(28, defective), (7, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(27, defective), (8, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(26, defective), (9, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(25, defective), (10, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(24, defective), (11, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(23, defective), (12, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(22, defective), (13, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(21, defective), (14, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(20, defective), (15, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(19, defective), (16, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(18, defective), (17, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(17, defective), (18, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(16, defective), (19, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(15, defective), (20, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(14, defective), (21, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(13, defective), (22, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(12, defective), (23, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(11, defective), (24, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(10, defective), (25, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(9, defective), (26, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(8, defective), (27, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(7, defective), (28, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(6, defective), (29, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(5, defective), (30, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(4, defective), (31, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(3, defective), (32, none_of([defective]))]).
sat(atleast(2,4-16,defective)) :- bn(4-16,[(2, defective), (33, none_of([defective]))]).
query(sat(atleast(2,4-16,defective))).
