% ## Solution= 0.176197
        probability(exactly(10,out,head)).
    property(outcome,[head, tails]).
static_instance(dom,[1-head, 1-tails]).
                      take_wr(dom,out,20).
given(exactly(1, dom, tails)).
given(exactly(1, dom, head)).
group(dom).
size(dom, 2).
root_ms(dom,[tails, head]).
setup_ms(dom,[(1, head), (1, tails)]).
          compressed_root(dom,[1-head, 1-tails]).
           root_ms_compressed(dom,[tails, head]).
setup_ms_compressed(dom,[(1, head), (1, tails)]).
