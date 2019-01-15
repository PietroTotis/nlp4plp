% ## Solution= .7073
probability(and(atmost(6,2-6,fail),atleast(3,2-6,fail))).
                             property(outcome(0),[fail]).
 static_instance(1-22,[0.25-fail, 0.75-none_of([fail])]).
                                    take_wr(1-22,2-6,15).
given(exactly(rel(25/100,1-22), 1-22, fail)).
group(1-22).
root_ms(1-22,[(0.25, fail), (0.75, none_of([fail]))]).
setup_ms(1-22,[(0.25, fail), (0.75, none_of([fail]))]).
          compressed_root(1-22,[0.25-fail, 0.75-none_of([fail])]).
 root_ms_compressed(1-22,[(0.25, fail), (0.75, none_of([fail]))]).
setup_ms_compressed(1-22,[(0.25, fail), (0.75, none_of([fail]))]).
