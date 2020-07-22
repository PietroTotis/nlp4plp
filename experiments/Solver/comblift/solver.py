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
        self.csp = SharpCSP(vars, problem.structure.type, problem.choice_formulas, problem.count_formulas, struct_constr)

    def solve(self):
        self.csp.solve()
        return self.csp.count()


class SharpCSP(object):

    def __init__(self, vars, type, choice_f, count_f, global_constr):
        self.vars = vars
        self.n_vars = len(vars)
        self.choice_f = choice_f
        self.count_f = count_f
        self.global_constr = global_constr
        self.fixed_choices = 0
        self.type = type

    def apply_choice(self, chf):
        if isinstance(chf, PosFormula):
            #TODO: check sat of multiple constraints same position
            self.vars[chf.pos-1] = chf.dformula.domain
        if isinstance(chf, InFormula):
            #TODO: check number of in < size
            if self.fixed_choices > self.problem.structure.size:
                raise Exception("Too many elements for the subset size!")
            self.vars[self.fixed_choices] = chf.df.domain #Wrong
            self.fixed_choices += 1

    def apply_count(self, count_f):
        if isinstance(count_f, IntervalFormula):
            choices_on_vars = self.count_interval(count_f)
        # if count_f.op in [">","=>"]:
        #     choices_on_vars = self.count_gt(count_f)
        # elif count_f.op in ["=<", "<"]:
        #     choices_on_vars = self.count_lt(count_f)
        elif count_f.op == "==":
            choices_on_vars = self.count_eq(count_f)
        else: #  count_f.op == "\=":
            choices_on_vars = self.count_ne(count_f)
        return choices_on_vars
        
    def class_combinations(self, n, classes):
        candidates = self.integer_k_partitions(n, len(classes))
        padded_cand = []
        for c in candidates:
            diff = len(classes) - len(c)
            pad = [0]*diff
            padded_cand.append(pad+c)
        # for 

    def count_interval(self, intf):  
        if intf.interval.empty:
            raise Exception(f"Unsat: check count constraints on {intf.dformula}")
        satisfied, not_satisfied, maybe = self.count_satisfied(intf.dformula.domain)
        sat_diff = intf.interval.lower - len(satisfied)
        if intf.interval.upper == portion.inf:
            unsat_diff = 0
        else:
            unsat_diff = (self.n_vars - intf.interval.upper) - len(not_satisfied)
        print(sat_diff, unsat_diff)
        ex_classes = self.exchangeable_classes(maybe)
        if len(ex_classes) == 1:
            free = len(maybe)
            if sat_diff + unsat_diff > free:
                raise Exception("Unsat!")
            else:
                sat_choices = math.comb(free, abs(sat_diff))
                unsat_choices = math.comb(free - sat_diff, unsat_diff)
                choices = sat_choices * unsat_choices
                dom = self.vars[next(iter(ex_classes))]
                i = 0
                while i < sat_diff:
                    self.vars[maybe[i]]  = dom & intf.dformula.domain
                    i += 1
                j = 0
                while j < unsat_diff:
                    self.vars[maybe[i + j]]  = dom & intf.dformula.neg().domain
                    j += 1
        else:
            pass
        return choices


        # if intf.interval.lower > 0:
        #     self.count_lt(intf)
        # if intf.interval.upper != portion.inf:
        #     self.count_gt(intf)
        

    # def count_lt(self, intf):        
    #     satisfied, not_satisfied, maybe = self.count_satisfied(intf.formula.domain)
    #     diff = intf.interval.upper - len(not_satisfied)
    #     ex_classes = self.exchangeable_classes(maybe)
    #     if len(ex_classes) == 1 and diff > 0:
    #         choices = math.comb(len(maybe), abs(diff))
    #         dom = self.vars[next(iter(ex_classes))]
    #         if diff>len(maybe):
    #             raise Exception("Unsat!")
    #         else:
    #             for j in range(0, diff):
    #                 self.vars[maybe[j]]  = dom & intf.neg().formula.domain
    #     else:
    #         choices = 0
    #         pass
    #     return choices

    # def count_gt(self, intf):        
    #     satisfied, not_satisfied, maybe = self.count_satisfied(intf.formula.domain)
    #     diff = intf.interval.lower - len(satisfied)
    #     ex_classes = self.exchangeable_classes(maybe)
    #     if len(ex_classes) == 1 and diff > 0:
    #         choices = math.comb(len(maybe), abs(diff))
    #         dom = self.vars[next(iter(ex_classes))]
    #         if diff>len(maybe):
    #             raise Exception("Unsat!")
    #         else:
    #             for j in range(0, diff):
    #                 self.vars[maybe[j]]  = dom & intf.formula.domain
    #     else:
    #         choices = 0
    #         pass
    #     return choices

    def count_eq(self, cof):
        satisfied, not_satisfied, maybe = self.count_satisfied(cof.formula.domain)
        diff = cof.num() - len(satisfied)
        ex_classes = self.exchangeable_classes(maybe)
        if len(ex_classes) == 1:
            dom = self.vars[next(iter(ex_classes))]
            choices = math.comb(len(maybe), abs(diff))
            for i in maybe:
                if diff<0:
                    self.vars[i]  = dom & cof.neg().domain
                    diff += 1
                elif diff>0:
                    self.vars[i] = dom & cof.formula.domain
                    diff -= 1
                else:
                    self.vars[i]  = dom & cof.neg().formula.domain
            if diff != 0:
                raise Exception("Usat!")
        else:
            choices = 0
            pass
        return choices

    def count_ne(self, cf):
        return self.count_eq(cf.neg())

    def count(self):
        if self.type=="sequence":
            count = self.count_sequence()
        if self.type=="subset":
            count = self.count_subsets()
        return count

    def count_satisfied(self, prop_f):
        sat = []
        not_sat = []
        maybe = []
        for i, v in enumerate(self.vars):
            if v in prop_f:
                sat.append(i)
            elif v.disjoint(prop_f):
                not_sat.append(i)
            else:
                maybe.append(i)
        return (sat, not_sat, maybe)

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
        if vars is None:
            vars = range(0,self.n_vars)
        classes = {}
        for i in vars:
            new = True
            for c in classes.keys():
                if self.vars[i] == self.vars[c]:
                    classes[c].append(i)
                    new = False
            if new:
                classes[i] = [i]
        return classes

    def integer_partitions(self, n):
        """
        From http://jeromekelleher.net/generating-integer-partitions.html
        """
        a = [0 for i in range(n + 1)]
        k = 1
        y = n - 1
        while k != 0:
            x = a[k - 1] + 1
            k -= 1
            while 2 * x <= y:
                a[k] = x
                y -= x
                k += 1
            l = k + 1
            while x <= y:
                a[k] = x
                a[l] = y
                yield a[:k + 2]
                x += 1
                y -= 1
            a[k] = x + y
            y = x + y - 1
            yield a[:k + 1]
    
    def integer_k_partitions(self, n, k):
        parts = [ p for p in self.integer_partitions(n) if len(p)<=k]
        return parts
            

    def solve(self):
        for c in self.choice_f:
            self.apply_choice(self.choice_f[c])
        for c in self.count_f:
            choices_on_vars = self.apply_count(self.count_f[c])
            print(c,"->",choices_on_vars)
            for v in self.vars:
                print(v)
            