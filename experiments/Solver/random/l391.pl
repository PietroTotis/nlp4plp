% ## Solution= 0.0816
                          probability(all(1-5,not(below))).
                              property(outcome(0),[below]).
static_instance(2-4,[0.005-below, 0.995-none_of([below])]).
                                      take_wr(2-4,1-5,500).
given(exactly(rel(1/200,2-4), 2-4, below)).
group(2-4).
root_ms(2-4,[(0.005, below), (0.995, none_of([below]))]).
setup_ms(2-4,[(0.005, below), (0.995, none_of([below]))]).
          compressed_root(2-4,[0.005-below, 0.995-none_of([below])]).
 root_ms_compressed(2-4,[(0.005, below), (0.995, none_of([below]))]).
setup_ms_compressed(2-4,[(0.005, below), (0.995, none_of([below]))]).
