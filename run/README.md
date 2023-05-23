# run.sh
Run a single example choosing between all the modules combinations.
There are some variables to set up with the path of the dataset and the solver.
Once the dataset path is given it is sufficient to pass the name of the file, e.g. h10.pl  
Note that by default problog is called with the parameter "-t 120" which sets a timeout of 120 seconds for the execution
# run_all.sh
Run a solver on all the examples in the folder.
# run_list.sh
Runs test on all problems listed in a file (given as parameter).
# run_a_solver.sh
More articulated running to experiment with different configurations of the solver (histograms/lists, constraints...)
Same as run.sh but with solver executable as a parameter.
# compare.sh
Runs one or more tests on all the possible combinations of configurations.
