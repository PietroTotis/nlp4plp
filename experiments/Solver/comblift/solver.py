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
        
    def class_combinations(self, n, classes):
        candidates = self.integer_k_partitions(n, len(classes))
        padded_cand = []
        for c in candidates:
            diff = len(classes) - len(c)
            pad = [0]*diff
            padded_cand.append(pad+c)
        # for 
        print(padded_cand)


    def count_lt(self, cf):
        pass
        # for v in self.vars:
        #         if v & prop_f is empty:
        #             count += 1
        #     sat = op(count, count_f.num) and count == len(self.vars)
        

    def count_gt(self, cf):        
        satisfied, not_satisfied = self.count_satisfied(cf)
        missing = cf.num - len(satisfied)
        if missing > 0:
            print("\tns: ", not_satisfied)
            print("\tdiff: ",missing)
            ex_classes = self.exchangeable_classes(not_satisfied)
            if len(ex_classes) == 1: 
                # all variables are exchangeable:
                # add missing constraints to satisfy prop_f
                # print("\t sn:", new_sat)
                dom = self.vars[next(iter(ex_classes))]
                for j in range(0, missing):
                    self.vars[not_satisfied[j]]  = dom & cf.compute()
            else:
                pass
                # print("\t",ex_classes)
                # combs = self.class_combinations(missing, ex_classes)


    def count_eq(self, cf):
        satisfied, not_satisfied = self.count_satisfied(cf)
        diff = cf.num - len(satisfied)
        ex_classes = self.exchangeable_classes(not_satisfied)
        print("diff:",diff)
        if len(ex_classes) == 1:
            dom = self.vars[next(iter(ex_classes))]
            choices = math.comb(self.n_vars, cf.num)
            print(choices)
            for i in range(0,self.n_vars):
                if i in satisfied and diff<0:
                    self.vars[i]  = dom & cf.neg().compute()
                    diff += 1
                elif i in not_satisfied and diff>0:
                    self.vars[i] = dom & cf.compute()
                    diff -= 1
                elif diff == 0:
                    if i in not_satisfied:
                        self.vars[i]  = dom & cf.neg().compute()
                    else:
                        pass

            for v in self.vars:
                print(v)
            # print("unsat2sat:",self.n_vars-diff)
            # for i in range(0,self.n_vars-diff):
            #     self.vars[not_satisfied[i]] = dom & cf.compute()
            #     print("sat->unsat:", i)
            # print("sat2unsat:",diff)
            # for i in range(0, diff):
            #     self.vars[not_satisfied[i]]  = dom & cf.neg().compute()
            #     print("unsat->sat:", i)
            # for i,v in enumerate(self.vars):
            #     print(f"{i}: {v}")
            # for i in not_satisfied:
            #     self.vars[i]  = dom & -cf.compute()
            # rem = diff-len(not_satisfied)
            # for i in range(0,rem):
            #     self.vars[satisfied[i]] = dom & -cf.compute()
        else:
            pass
        # else:
        #     if len(ex_classes) == 1:
        #         dom = self.vars[next(iter(ex_classes))]
        #         for j in range(0, diff):
        #             self.vars[not_satisfied[j]]  = dom & cf.compute()

        #     else:
        #         pass

    def count_ne(self, cf):
        return self.count_eq(-cf)

    def count(self):
        if self.problem.structure.type=="sequence":
            count = self.count_sequence()
        if self.problem.structure.type=="subset":
            count = self.count_subsets()
        return count

    def count_satisfied(self, dom_formula):
        prop_f = dom_formula.compute()
        not_sat = []
        sat = []
        for i, v in enumerate(self.vars):
            if v not in prop_f:
                not_sat.append(i)
            else:
                sat.append(i)
        return (sat, not_sat)

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
        for c in self.problem.choice_formulas:
            print(c)
            self.apply_choice(c)
        for c in self.problem.count_formulas:
            print(c)
            self.apply_count(c)
            