import portion
import math 

from problog.logic import Constant

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
            pc = Constant(problem.container)
            var_dom = DomainFormula(pc, pc, problem.domains[problem.container])
            vars = [var_dom]*problem.structure.size
        else:
            n = problem.structure.size
            subset_dom = Domain(problem.type, portion.closed(1,n))
            vars = [subset_dom]*problem.domains[problem.container].size
        self.csp = SharpCSP(vars, problem.structure.type, problem.choice_formulas, problem.count_formulas, problem.structure.spec)

    def solve(self):
        return self.csp.solve()

class SharpCSP(object):

    def __init__(self, vars, type, choice_f, count_f, alt_type, prev_choices={}, lvl=0):
        self.alt_type = alt_type
        self.choice_f = choice_f
        self.count_f = count_f
        self.fixed_choices = 0
        self.lvl = lvl
        self.n_vars = len(vars)
        self.previous_choices = prev_choices
        self.type = type
        self.vars = vars

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
        str += "Solving choices:\n"
        for c in self.previous_choices:
            str += f"\t{c}:{self.previous_choices[c]}\n"
        
        return str

    def add_choice(self, previous, name, val):
        if name in previous:
            previous[name] += val
        else:
            previous[name] = val
        return previous

    def apply_choice(self, chf):
        if isinstance(chf, PosFormula):
            #TODO: check sat of multiple constraints same position
            self.vars[chf.pos-1] = chf.dformula.domain
        if isinstance(chf, InFormula):
            print(chf)
            #TODO: check number of in < size
            if self.fixed_choices > self.n_vars:
                raise Unsatisfiable("Too many elements for the subset size!")
            self.vars[self.fixed_choices] = chf.entity.domain
            self.fixed_choices += 1

    def apply_count(self, count_f):
        if isinstance(count_f, IntervalFormula):
            choices_on_vars, choices = self.count_interval(count_f)
        elif count_f.op == "==":
            choices_on_vars, choices = self.count_eq(count_f)
        else: #  count_f.op == "\=":
            choices_on_vars, choices = self.count_ne(count_f)
        return choices_on_vars, choices
        
    def class_combinations(self, n, classes):
        candidates = self.integer_k_partitions(n, len(classes))
        padded_cand = []
        for c in candidates:
            diff = len(classes) - len(c)
            pad = [0]*diff
            padded_cand.append(pad+c)

    def count_interval(self, intf):
        if intf.interval.empty:
            raise Unsatisfiable(f"Unsat: check count constraints on {intf.dformula}")
        satisfied, not_satisfied, maybe = self.count_satisfied(intf.dformula.domain)
        sat_diff = intf.interval.lower - len(satisfied)
        if intf.interval.upper == portion.inf or intf.interval.upper >= self.n_vars:
            unsat_diff = 0
        else:
            unsat_diff = (self.n_vars - intf.interval.upper) - len(not_satisfied)
        ex_classes = self.exchangeable_classes(maybe)
        if len(maybe) == 0:
            if sat_diff == 0 and unsat_diff == 0:
                count, choices = self.count_domains()
            else:
                raise Unsatisfiable("Unsat!")
        if len(ex_classes) == 1:
            free = len(maybe)
            if sat_diff + unsat_diff > free:
                raise Unsatisfiable("Unsat!")
            else:
                sat_choices = math.comb(free, abs(sat_diff))
                unsat_choices = math.comb(free - sat_diff, unsat_diff)
                n_choices = sat_choices * unsat_choices
                dom = self.vars[next(iter(ex_classes))]
                i = 0
                sat_f =  dom & intf.dformula
                while i < sat_diff:
                    self.vars[maybe[i]]  = sat_f
                    i += 1
                j = 0
                unsat_f = dom & intf.dformula.neg()
                while j < unsat_diff:
                    self.vars[maybe[i + j]]  = unsat_f
                    j += 1
                count, choices = self.count_domains()
                choices = self.add_choice(choices, sat_f, i)
                choices = self.add_choice(choices, unsat_f, j)
                if self.type == "sequence":
                    count *= n_choices 
        else:
            count, choices = self.split_interval(satisfied,not_satisfied, ex_classes, intf)
        return count, choices

    def count_eq(self, cof):
        satisfied, not_satisfied, maybe = self.count_satisfied(cof.dformula.domain)
        diff = cof.num() - len(satisfied)
        ex_classes = self.exchangeable_classes(maybe)
        if len(maybe) == 0:
            if diff == 0:
                count, choices = self.count_domains()
            else:
                raise Unsatisfiable("Unsat!")
        elif len(ex_classes) == 1:
            dom = self.vars[next(iter(ex_classes))]
            n_choices = math.comb(len(maybe), abs(diff))
            sat_f = dom & cof.dformula
            unast_f =  dom & cof.dformula.neg()
            for i in maybe:
                if diff<0:
                    self.vars[i]  = unsat_f
                    diff += 1
                elif diff>0:
                    self.vars[i] = sat_f
                    diff -= 1
                else:
                    self.vars[i]  = unsat_f
            count, choices = self.count_domains()
            choices = self.add_choice(choices, sat_f, abs(diff))
            if self.type == "sequence":
                count *= n_choices 
            if diff != 0:
                raise Unsatisfiable("Unsat!")
        else:
            count, choices = self.split_eq(satisfied, not_satisfied, ex_classes, cof)
        return count, choices

    def count_ne(self, cof):
        overcount = self.count_domains()
        cof.op = "=="
        nogood = self.count_eq(cof)
        return overcount - nogood

    def count_domains(self, vars=None):
        self.debug("Counting domains:")
        if self.type=="sequence":
            count, choices = self.count_sequence(vars)
        elif self.type=="subset":
            count, choices = self.count_subsets(vars)
        else:
            pass
        return count, choices

    def count_satisfied(self, prop_f):
        sat = []
        not_sat = []
        maybe = []
        for i, v in enumerate(self.vars):
            if v.domain in prop_f:
                sat.append(i)
            elif v.domain.disjoint(prop_f):
                not_sat.append(i)
            else:
                maybe.append(i)
        return (sat, not_sat, maybe)

    def count_sequence(self, vars=None):
        count = 1
        if not self.alt_type:
            choices = {}
            if vars is None:
                vars = self.vars
            for v in vars:
                    count *= v.domain.size()
        else:
            classes = self.exchangeable_classes(vars)
            if len(classes) == 1:
                var_idxs = classes[next(iter(classes))]
                dom = self.vars[var_idxs[0]]
                count, choices = self.filter_choices(dom)
                # count = math.factorial(available_choices) / math.factorial(self.n_vars)
            else:
                count = self.split_inj(classes)
        return count, choices


    def count_subsets(self, vars = None):
        count = 1
        if self.alt_type:
            pass
        else:
            classes = self.exchangeable_classes(vars)
            if len(classes) == 1:
                var_idxs = classes[next(iter(classes))]
                dom = self.vars[var_idxs[0]]
                x = dom.size()
                y = len(var_idxs)
                if self.alt_type:
                    count = math.comb(x+y-1,y)
                else:
                    x = x - self.fixed_choices
                    count = math.comb(x,y)
            else:
                count = self.split_inj(classes)
        return count

    def debug(self, str):
        ind = "\t"*self.lvl
        lines = str.split("\n")
        indented = list(map(lambda l: ind+l, lines))
        final = "\n".join(indented)
        print(final)

    def exchangeable_classes(self, vars = None):
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

    def filter_choices(self, dom):
        relevant = []
        for pc in self.previous_choices:
            if not dom.disjoint(pc):
                relevant.append(pc)
        choices = 0
        if len(relevant) == 0:
            n = dom.domain.size()
            m = self.n_vars
            count = math.factorial(n) // math.factorial(n-m)
            choices = self.add_choice(self.previous_choices, dom, self.n_vars)
            return count, choices
        else:
            
        # vars = []
        # for pc in relevant:
        #     n_choices = self.previous_choices[pc]
        #     choices += n_choices
        #     vars += [pc.dformula.domain] * n_choices
        # print(vars)
        return count, choices

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
        self.debug("Solving:")
        self.debug(str(self))        
        self.debug("--------")
        for c in self.choice_f:
            self.apply_choice(self.choice_f[c])
        if len(self.count_f) !=0:
            for c in self.count_f:
                count, choices = self.apply_count(self.count_f[c])
        else:
            count, choices = self.count_domains()
        self.debug("tot:" + str(count))
        self.debug("=========")
        return count, choices

    def solve_subproblem(self, vars, type, choice_constr, count_constr, alt_type, choices):
        self.debug("Subproblem:")
        subproblem = SharpCSP(vars, type, choice_constr, count_constr, alt_type, choices, self.lvl+1)
        try:
            count = subproblem.solve()
            return count
        except Unsatisfiable:
            return 0

    def split_eq(self, satisfied, not_satisfied, ex_classes, f):
        diff = f.num() - len(satisfied)
        fixed = self.get_vars(satisfied + not_satisfied)
        count_fixed = self.count_domains(fixed)
        count = 0
        for val in range(0,diff+1):
            f_split_class = f.update(val)
            f_rest_classes = f.update(diff - val)
            split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
            split_class_constraints = {str(f_split_class.dformula): f_split_class}
            rest_classes_constraints = {str(f_rest_classes.dformula): f_rest_classes}
            self.debug("Split class:")
            split_class_count, split_class_choices = self.solve_subproblem(split_class_vars, self.type, {}, split_class_constraints, self.alt_type, self.previous_choices)
            if split_class_count != 0:
                self.debug("Rest class:")
                rest_classes_count, rest_classes_choices  = self.solve_subproblem(rest_classes_vars, self.type, {}, rest_classes_constraints, self.alt_type, split_class_choices)
                count += count_fixed * split_class_count * rest_classes_count
        return count, rest_classes_choices

    def split_ex_classes(self, ex_classes):
        it_excls = iter(ex_classes)
        split_class = next(it_excls)
        rest_classes = []
        for i in it_excls:
            rest_classes = rest_classes + ex_classes[i]
        split_class_vars = self.get_vars(ex_classes[split_class])
        rest_classes_vars = self.get_vars(rest_classes)
        return (split_class_vars, rest_classes_vars)

    def split_interval(self, satisfied, not_satisfied, ex_classes, f):
        fixed = self.get_vars(satisfied + not_satisfied)
        count_fixed = self.count_domains(fixed)
        split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
        count = 0
        has_ub = f.interval.upper != portion.inf
        if has_ub:
            cases = f.interval.upper + 1
        else:
            cases = f.interval.lower
        for val in range(0,cases):
            self.debug("val: "+str(val))
            f_split_class = CountingFormula(f.dformula, "==", val)
            f_rest_classes = f.shrink(val)
            split_class_vars = self.get_vars(ex_classes[split_class])
            rest_classes_vars = self.get_vars(rest_classes)
            split_class_constraints = {str(f_split_class.dformula): f_split_class}
            rest_classes_constraints = {str(f_rest_classes.dformula): f_rest_classes}
            split_class_count = self.solve_subproblem(split_class_vars, self.type, {}, split_class_constraints, self.alt_type)
            if split_class_count != 0:
                rest_classes_count = self.solve_subproblem(rest_classes_vars, self.type, {}, rest_classes_constraints, self.alt_type)
                count += count_fixed * split_class_count * rest_classes_count                
        if not has_ub:
            split_class_constraints = {str(f.dformula): f}
            split_class_count, split_class_choices  = self.solve_subproblem(split_class_vars, self.type, {} , split_class_constraints, self.alt_type, self.previous_choices)
            print("sssss")
            if split_class_count != 0:
                rest_classes_count, rest_classes_choices = self.solve_subproblem(rest_classes_vars, self.type, {}, {}, self.alt_type, split_class_choices)
                count += count_fixed * split_class_count * rest_classes_count 
        
        return count, rest_class_choices

    def split_inj(self, ex_classes):
        split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
        split_class_count, split_class_choices = self.solve_subproblem(split_class_vars, self.type, {}, {}, self.alt_type, self.previous_choices)
        if split_class_count != 0:
            rest_classes_count, rest_classes_choices = self.solve_subproblem(rest_classes_vars, self.type, {}, {}, self.alt_type,split_class_choices)
            return split_class_count * rest_classes_count, rest_classes_choices
        else:
            return 0, self.previous_choices


    # def count_lt(self, intf):        
    #     satisfied, not_satisfied, maybe = self.count_satisfied(intf.dformula.domain)
    #     diff = intf.interval.upper - len(not_satisfied)
    #     ex_classes = self.exchangeable_classes(maybe)
    #     if len(ex_classes) == 1 and diff > 0:
    #         choices = math.comb(len(maybe), abs(diff))
    #         dom = self.vars[next(iter(ex_classes))]
    #         if diff>len(maybe):
    #             raise Unsatisfiable("Unsat!")
    #         else:
    #             for j in range(0, diff):
    #                 self.vars[maybe[j]]  = dom & intf.neg().dformula.domain
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