from __future__ import print_function

from problog.parser import PrologParser
from problog.parser import ParseError
from problog.program import PrologFactory
from problog.logic import Term, Var, term2list

import os
import re

skip = ["l765", "m331", "m403"]
path_dataset = "/mnt/01D503E0ADE91930/Users/pietr/Desktop/PhD/nlp4plp/compressed"


class ProblogDataset:

    def __init__(self, dir_programs, label_type):
        '''
        :param label_type: which kind of label should be associated with each program (in dir_programs)
        '''
        self.dir = dir_programs
        self.label_type = label_type
        self.label = {}

        self.initlabs()


    def initlabs(self):
        '''
        :param dir: directory of problog encodings
        navigates to programs' directory, parses the file and calls the labelling function
        '''
        for filename in os.listdir(self.dir):
            problem_id, extension = filename.split(".")
            if problem_id not in skip and extension == "pl":
                with open(os.path.join(self.dir, filename), "r") as f:
                    program = f.read()
                    if self.label_type == "take":
                        self.label[problem_id] = ProblogDataset.get_label_take(program)
                    elif self.label_type == "property":
                        self.label[problem_id] = ProblogDataset.get_label_property(program)
                    else:
                        pass
            elif problem_id in skip:
                self.label[problem_id] = None
            else:
                pass

    @staticmethod
    def get_label_take(program):
        '''
        :param program: intermediate encodings
        checks whether the program contains a "take with replacement" or a "take without replacement" instruction
        '''
        parser = PrologParser(PrologFactory())
        parsed = parser.parseString(program)
        for term in parsed:
            if term.functor == "take":
                return 1
            elif term.functor == "take_wr":
                return 0
            else:
                pass

    @staticmethod
    def get_label_property(program):
        '''
        :param program: intermediate encodings
        finds all property declarations and splits the statement's string into a list of property
        '''
        properties = re.findall(r"property\(.*, *\[(.*)\]\)", program)
        split_properties = [p.split(",") for p in properties]
        return split_properties

    def __str__(self):
        str = ""
        for prog, lab in self.label.items():
            str += "{} - {}\n".format(prog,lab)
        return str

if __name__ == '__main__':
    #debugging purposes
    print(ProblogDataset(path_dataset, "property"))
