
from  formulas import PosFormula, InFormula
from structure import *
from solver import Solver
from formulas import *
 

class Problem(object):
    
    def __init__(self):
        self.choice_formulas = {}
        self.container = None
        self.count_formulas = {}
        self.domains = {}
        self.entity_map = {}
        self.queries = []
        self.structure = None

        self._count_formulas = []
        self._choice_formulas = []

    def add_choice_formula(self, head, body):
        # struct_name = head.args[0]
        # if head.functor == "pos":
        #     c = PosFormula(*head.args)
        # if head.functor == "in":
        #     c = InFormula(*head.args)
        self._choice_formulas.append((head,body))

    def add_domain(self, dom):
        self.domains[dom.name] = dom
        if self.container is None:
            self.container = dom.name
        else: 
            container = self.domains[self.container]
            if container in dom:
                self.container = dom.name

    def add_counting_formula(self, f):
        self._count_formulas.append(f)

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

    def compute_dom(self, formula):
        cont = self.domains[self.container]
        if formula.functor == "inter":
            lf = self.compute_dom(formula.args[0])
            rf = self.compute_dom(formula.args[1])
            domain = lf.domain & rf.domain
        elif formula.functor == "union":
            lf = self.compute_dom(formula.args[0])
            rf = self.compute_dom(formula.args[1])
            domain = lf.domain | rf.domain
        elif formula.functor == "not":
            arg = self.compute_dom(formula.args[0])
            domain =  arg.neg().domain
        else:
            if formula.functor in self.domains:
                domain = self.domains[str(formula)]
            else:
                id = self.get_entity(formula.functor)
                domain = Domain(id, portion.singleton(id))
        df = DomainFormula(cont, formula, domain)
        return df

    def get_entity(self, e):
        if e in self.entity_map.keys():
            return self.entity_map[e]
        else:
            return None
    
    def prepare(self):
        for head, body in self._choice_formulas:
            struct_name = head.args[0]
            type = head.functor
            formula = head.args[-1]
            df = self.compute_dom(formula)
            if type == "pos":
                pos = head.args[1]
                c = PosFormula(struct_name, pos, df)
                self.choice_formulas[pos] = c
            if type == "in":
                c = InFormula(df)
        for cof in self._count_formulas:
            struct_name = cof.args[0]
            cf = cof.args[1]
            op = cf.functor[1:-1]
            problog_df = cf.args[0]
            df = self.compute_dom(problog_df)
            val = cf.args[1].compute_value()
            if op in ["==", "\="]:
                self.count_formulas[problog_df] = CountingFormula(df, op, val)
            else:
                ivf = IntervalFormula(df)
                s = str(problog_df)
                if op in [">","=>"]:
                    ivf.add_lower_bound(val, op == ">")
                else:
                    ivf.add_upper_bound(val, op == "<")
                print(ivf)
                if s in self.count_formulas:
                    self.count_formulas[s] = self.count_formulas[s] & ivf
                else:
                    self.count_formulas[s] = ivf

    def solve(self):
        self.prepare()
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