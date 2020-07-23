import portion
import math 

from formulas import *
from structure import Domain


class Unsatisfiable(Exception):
    def __init__(self, value): 
        self.value = value 
  
    # __str__ is to print() the value 
    def __str__(self): 
        return(repr(self.value)) 

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
        self.csp = SharpCSP(vars, problem.structure.type, problem.choice_formulas, problem.count_formulas, struct_constr, 0)

    def solve(self):
        return self.csp.solve()

class SharpCSP(object):

    def __init__(self, vars, type, choice_f, count_f, global_constr, lvl):
        self.vars = vars
        self.n_vars = len(vars)
        self.choice_f = choice_f
        self.count_f = count_f
        self.global_constr = global_constr
        self.fixed_choices = 0
        self.type = type
        self.lvl = lvl

    def __str__(self):
        str = f"Solving {self.n_vars} vars:\n"
        for v in self.vars:
            str += f"\t{v}\n"
        str += "Choice constraints:\n"
        for c in self.choice_f:
            str += f"\t{self.choice_f[c]}\n"
        str += "Count constraints:\n"
        for c in self.count_f:
            str += f"\t{self.count_f[c]}\n"
        return str

    def apply_choice(self, chf):
        if isinstance(chf, PosFormula):
            #TODO: check sat of multiple constraints same position
            self.vars[chf.pos-1] = chf.dformula.domain
        if isinstance(chf, InFormula):
            #TODO: check number of in < size
            if self.fixed_choices > self.problem.structure.size:
                raise Unsatisfiable("Too many elements for the subset size!")
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
            raise Unsatisfiable(f"Unsat: check count constraints on {intf.dformula}")
        satisfied, not_satisfied, maybe = self.count_satisfied(intf.dformula.domain)
        sat_diff = intf.interval.lower - len(satisfied)
        if intf.interval.upper == portion.inf:
            unsat_diff = 0
        else:
            unsat_diff = (self.n_vars - intf.interval.upper) - len(not_satisfied)
        ex_classes = self.exchangeable_classes(maybe)
        if len(ex_classes) == 1:
            free = len(maybe)
            if sat_diff + unsat_diff > free:
                raise Unsatisfiable("Unsat!")
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
            count = choices * self.count_domains()
            if diff != 0:
                raise Unsatisfiable("Unsat!")
        else:
            count = self.split(satisfied,not_satisfied, ex_classes, cof)
        return count

    def count_ne(self, cf):
        return self.count_eq(cf.neg())

    def count_domains(self, vars=None):
        if self.type=="sequence":
            count = self.count_sequence(vars)
        if self.type=="subset":
            count = self.count_subsets(vars)
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

    def count_sequence(self, vars=None):
        count = 1
        if vars is None:
            vars = self.vars
        for v in vars:
            count *= v.size()
            self.debug(str(v)+": "+str(v.size()))
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

    def debug(self, str):
        ind = "\t"*self.lvl
        lines = str.split("\n")
        indented = list(map(lambda l: ind+l, lines))
        final = "\n".join(indented)
        print(final)


    def exchangeable_classes(self, vars=None):
        if vars is None:
            vars = range(0,self.n_vars)
        classes = {}
        for i in vars:
            new = True
            for c in classes:
                if self.vars[i] == self.vars[c]:
                    classes[c].append(i)
                    new = False
            if new:
                classes[i] = [i]
        return classes

    def get_vars(self, indexes):
        return list(map(lambda v: self.vars[v], indexes))
        
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
        self.debug(str(self))        
        for c in self.choice_f:
            self.apply_choice(self.choice_f[c])
        for c in self.count_f:
            count = self.apply_count(self.count_f[c])
        self.debug("tot:" + str(count))
        self.debug("=========")
        return count

    def split(self, satisfied, not_satisfied, ex_classes, f):
        if isinstance(f, IntervalFormula):
            pass
        else:
            diff = f.num() - len(satisfied)
        fixed = self.get_vars(satisfied + not_satisfied)
        count_fixed = self.count_domains(fixed)
        it_excls = iter(ex_classes)
        split_class = next(it_excls)
        rest_classes = []
        for i in it_excls:
            rest_classes = rest_classes + ex_classes[i]
        count = 0
        for val in range(0,diff+1):
            f_split_class = f.update(val)
            f_rest_classes = f.update(diff - val)
            split_class_vars = self.get_vars(ex_classes[split_class])
            rest_classes_vars = self.get_vars(rest_classes)
            split_class_constraints = {str(f_split_class.formula): f_split_class}
            rest_classes_constraints = {str(f_rest_classes.formula): f_rest_classes}
            try:
                subproblem_split_class = SharpCSP(split_class_vars, self.type, {}, split_class_constraints, self.global_constr, self.lvl+1)
                split_class_count = subproblem_split_class.solve()
            except Unsatisfiable:
                split_class_count = 0
            else:
                rest_classes_count = 0
                try:
                    subproblem_rest_classes = SharpCSP(rest_classes_vars, self.type, {}, rest_classes_constraints, self.global_constr, self.lvl+1)
                    rest_classes_count = subproblem_rest_classes.solve()
                except Unsatisfiable:
                    rest_classes_count = 0
            count += count_fixed * split_class_count * rest_classes_count
        return count


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
    #             raise Unsatisfiable("Unsat!")
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
    #             raise Unsatisfiable("Unsat!")
    #         else:
    #             for j in range(0, diff):
    #                 self.vars[maybe[j]]  = dom & intf.formula.domain
    #     else:
    #         choices = 0
    #         pass
    #     return choices