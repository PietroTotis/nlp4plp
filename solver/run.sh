# $1 is the model, this has to be passed to run_a_solver as first argument to extract solution
# additional two arguments in arbitrary order, they need to define the multiset type parameters and early-failure settings
# available options are
# param_X.pl (full details on root sets) and param_X_compressed.pl (abstracting irrelevant details) for X either ms (histogram) or list (plain enumeration)
# setting_plain.pl for plain generate and test, setting_push.pl for pushing query constraints into generation, setting_filter.pl for filtering nodes on evidence, setting_push_filter.pl for both
sh run_a_solver.sh solver.pl $1 param_ms_compressed.pl setting_push_filter.pl
