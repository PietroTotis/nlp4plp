% using the original solver to generate transformations of the input files

% ecpects two files: the original model and the conversion parameter file specifying active_request/2
:- cmd_args([File1,File2]), consult(File1), consult(File2).

:- consult(get_roots).