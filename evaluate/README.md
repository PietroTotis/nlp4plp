This folder contains the code to evaluate the output of the NLP module, plus the script to convert an encoding to the corresponding symbolic representation.

# Evaluate

There are two assumptions:

- No capital letters are used in the output
- The '-' operator (and the other arithmetic operators) do not appear as functions but as characters used in labels (i.e. group(1-2))

# Convert

Same '-' operator issue as Evaluate.py, treated as a label.

## Problog parser

problog_parser.py is the parser from problog for syntax checking
contains all the original files in order to parse, check whether two predicates unify, and manipulate predicates and terms.
All files have been not modified with respect to Problog's implementation

