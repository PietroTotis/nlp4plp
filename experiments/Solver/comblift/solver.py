import portion
import math 

from formulas import *
from structure import Domain

class Solver(object):

    def __init__(self,problem):
        if problem.structure.type in ["sequence", "subset"]:
            if problem.structure.spec:
                struct_constr = "inj"
            else:
                struct_constr = "any"
            for v in range(0, problem.structure.size):
                var_dom = problem.domains[problem.container]
                vars = [var_dom]*problem.structure.size
        else:
            n = problem.structure.size
            subset_dom = Domain(problem.type, portion.closed(1,n))
            struct_constr = "sur"
            vars = [subset_dom]*problem.domains[problem.container].size
        self.csp = SharpCSP(vars, problem, struct_constr)

    def solve(self):
        self.csp.solve()
        return self.csp.count()


class SharpCSP(object):

    def __init__(self, vars, problem, global_constr):
        self.vars = vars
        self.n_vars = len(vars)
        self.problem = problem
        self.global_constr = global_constr
        self.fixed_choices = 0

    def apply_choice(self, constr):
        if isinstance(constr, PosFormula):
            #TODO: check sat of multiple constraints same position
            df = DomainFormula(self.problem, constr.dformula)
            self.vars[constr.pos-1] = df.compute()
        if isinstance(constr, InFormula):
            #TODO: check number of in < size
            if self.fixed_choices > self.problem.structure.size:
                raise Error("Too many elements for the subset size!")
            df = DomainFormula(self.problem, constr.const)
            v = df.compute()
            self.vars[self.fixed_choices] = v
            self.fixed_choices += 1

    def apply_count(self, constr):
        count_f = CountingFormula(self.problem, constr)
        print(count_f)
        if count_f.op in [">","=>"]:
            self.count_gt(count_f)
        elif count_f.op in ["=<", "<"]:
            self.count_lt(count_f)
        elif count_f.op == "==":
            self.count_eq(count_f)
        else: #  count_f.op == "\=":
            self.count_ne(count_f)
        
    def count_lt(self, cf):
        pass
        # for v in self.vars:
        #         if v & prop_f is empty:
        #             count += 1
        #     sat = op(count, count_f.num) and count == len(self.vars)
        

    def count_gt(self, cf):        
        prop_f = cf.compute()
        op = cf.get_operator()
        satisfy = [i for i, v in enumerate(self.vars) if v in prop_f]
        not_satisfy = set(range(0,self.n_vars)) - set(satisfy)
        # check if already satisfied
        count = len(satisfy)
        sat = op(count, cf.num)
        if not sat:
            diff = cf.num - count
            print(diff)

    def count_eq(self, cf):
        pass
        # ok = 
        # for i, v in enumerate(self.vars):
        #     if v in prop_f:
        #         count += 1
        #     else:
        #         v = v & prop_f

    def count_ne(self, cf):
        pass

    def count(self):
        if self.problem.structure.type=="sequence":
            count = self.count_sequence()
        if self.problem.structure.type=="subset":
            count = self.count_subsets()
        return count

    def count_sequence(self):
        count = 1
        for v in self.vars:
            count *= v.size()
        return count

    def count_subsets(self):
        # n_free = self.problem.structure.size - self.fixed_choice
        x = self.problem.domains[self.problem.container].size()
        y = len(self.vars) - self.fixed_choices
        if self.problem.structure.spec:
            count = math.comb(x+y-1,y)
        else:
            x = x - self.fixed_choices
            count = math.comb(x,y)
        return count

    def exchangeable_classes(self, vars=None):
        if vars = None:
            vars = self.vars
        


    def solve(self):
        for c in self.problem.choice_formulas:
            print(c)
            self.apply_choice(c)
        for c in self.problem.count_formulas:
            print(c)
            self.apply_count(c)
            