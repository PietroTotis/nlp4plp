
from  formulas import PosFormula, InFormula
from structure import *
from solver import Solver
 

class Problem(object):
    
    def __init__(self):
        self.domains = {}
        self.structure = None
        self.queries = []
        self.count_formulas = []
        self.choice_formulas = []
        self.container = None
        self.entity_map = {}

    def add_choice_formula(self, head, body):
        # struct_name = head.args[0]
        if head.functor == "pos":
            c = PosFormula(*head.args)
        if head.functor == "in":
            c = InFormula(*head.args)
        self.choice_formulas.append(c)

    def add_domain(self, dom):
        self.domains[dom.name] = dom
        if self.container is None:
            self.container = dom.name
        else: 
            container = self.domains[self.container]
            if container in dom:
                self.container = dom.name

    def add_counting_formula(self, f):
        self.count_formulas.append(f)

    def add_entity(self, e):
        if e in self.entity_map:
            return self.entity_map[e]
        else:
            i = len(self.entity_map) +1
            self.entity_map[e] = i
            return i

    def add_query(self, q):
        self.queries.append(q)

    def add_size(self, name, s):
        self.structure.size = s

    def add_structure(self, struct):
        self.structure = struct

    def get_entity(self, e):
        if e in self.entity_map.keys():
            return self.entity_map[e]
        else:
            return None

    def solve(self):
        s = Solver(self)
        return s.solve()
    
    def __str__(self):
        s = ""
        for d in self.domains.values():
            s += str(d) + "\n"
        for f in self.count_formulas:
            s += str(f) + "\n"
        s += str(self.structure)  + "\n"
        for cf in self.choice_formulas:
            s += str(cf) + "\n"
        for q in self.queries:
            s += f"query({q}).\n"
        return s



# class Sequence(Structure):
#     def __init__(self, name, domain, f_constr):
#         Structure.__init__(self, name, domain, True, True, f_constr)


# class Subset(Structure):
#     def __init__(self, name, f_constr):
#         Structure.__init__(self, name, domain, False, True, f_constr)


# class Partition(Structure):
#     def __init__(self, name, f_constr):
#         Structure.__init__(self, name, domain, True, False, f_constr)