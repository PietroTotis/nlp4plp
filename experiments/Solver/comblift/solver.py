import portion
import math 
import itertools 

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
        count_f = list(problem.count_formulas.values())
        self.csp = SharpCSP(vars, problem.structure.type, problem.choice_formulas, count_f, problem.structure.spec)

    def solve(self):
        count, _ = self.csp.solve()
        return count

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
        str = "----------\n"
        str += f"Solving {self.n_vars} vars:\n"
        for v in self.vars:
            str += f"\t{v}\n"
        str += "Choice constraints:\n"
        for c in self.choice_f:
            str += f"\t{self.choice_f[c]}\n"
        str += "Count constraints:\n"
        for c in self.count_f:
            str += f"\t{c}\n"
        str += "Solving choices:\n"
        for c in self.previous_choices:
            str += f"\t{c}:{self.previous_choices[c]}\n"
        str += "----------"
        return str

    def add_choice(self, previous, name, val):
        if name in previous:
            previous[name] += val
        else:
            previous[name] = val
        return previous

    def apply_choice(self, chf):
        if isinstance(chf, PosFormula):
            self.vars[chf.pos-1] = self.vars[chf.pos-1] & chf.dformula
            self.debug("Choice set:", self.vars[chf.pos-1])
        if isinstance(chf, InFormula):
            #TODO: check number of in < size
            if self.fixed_choices > self.n_vars:
                raise Unsatisfiable("Too many elements for the subset size!")
            self.vars[self.fixed_choices] = chf.entity
            self.fixed_choices += 1
            self.debug(f"Choice n.{self.fixed_choices} set:", self.vars[self.fixed_choices])

    def apply_count(self, current, others):
        self.debug("Propagating ", current)
        self.lvl += 1
        if isinstance(current, IntervalFormula):
            count, choices = self.count_interval(current, others)
        elif current.op == "==":
            count, choices = self.count_eq(current, others)
        else: #  current.op == "\=":
            count, choices = self.count_ne(current, others)
        self.lvl -=1
        return count, choices
        
    # def apply_counts(self):
    #     count, choices = self.apply_count(self.count_f[0], self.count_f[1:])
    #     # n_choices = 1
    #     # for c in self.count_f:
    #     #     n, choices = self.apply_count(c)
    #     #     n_choices *= n
    #     # dom_count, dom_choices = self.count_domains()
    #     # count = n_choices*dom_count
    #     return count, choices

    def apply_counts(self):
        ex_classes = self.exchangeable_classes()
        if len(ex_classes)>1:
            count, choices = self.count_non_exchangeable(ex_classes)
        else:
            count, choices = self.count_exchangeable()
        return count, choices

    def count_interval(self, intf, others):
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
                self.debug(cof, " already satisfied")
            else:
                self.debug(cof, " is unsat here")
                raise Unsatisfiable("Unsat!")
        else: # len(ex_classes) == 1:
            free = len(maybe)
            if sat_diff + unsat_diff > free:
                raise Unsatisfiable("Unsat!")
            else:
                self.debug("Setting interval constraints on exchangeable vars...")
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
                if len(others) == 0:
                    count, choices = self.count_domains()
                    count = count*n_choices
                else:
                    self.debug("Splitting on other constraints...")
                    count, choices = self.solve_subproblem(self.vars, self.type, {}, others, self.alt_type, {})
                    count = count*n_choices
                    return count, choices
        return count, choices

    def count_eq(self, cof, others):
        satisfied, not_satisfied, maybe = self.count_satisfied(cof.dformula.domain)
        diff = cof.num() - len(satisfied)
        ex_classes = self.exchangeable_classes(maybe)
        if len(maybe) == 0:
            n_choices = 1
            if diff == 0:
                count, choices = self.count_domains()
                self.debug(cof, " already satisfied")
            else:
                self.debug(cof, " is unsat here")
                raise Unsatisfiable("Unsat!")
        else: #len(ex_classes) == 1:
            dom = self.vars[next(iter(ex_classes))]
            self.debug(f"{len(maybe)} exchangeable free vars: {dom}")
            n_choices = math.comb(len(maybe), abs(diff))
            sat_f = dom & cof.dformula
            unsat_f =  dom & cof.dformula.neg()
            for i in maybe:
                if diff<0:
                    self.vars[i]  = unsat_f
                    diff += 1
                elif diff>0:
                    self.vars[i] = sat_f
                    diff -= 1
                else:
                    self.vars[i]  = unsat_f
            if len(others) == 0:
                count, choices = self.count_domains()
                count = count*n_choices
            else:
                self.debug("Splitting on other constraints...")
                count, choices = self.solve_subproblem(self.vars, self.type, {}, others, self.alt_type, {})
                count = count*n_choices
                return count, choices
            if diff != 0:
                raise Unsatisfiable("Unsat!")
        return count, choices

    def count_exchangeable(self):
        self.debug("Counting exchangeable...")
        cof = self.count_f[0]
        others = self.count_f[1:]
        count, choices = self.apply_count(cof, others)
        return count, choices

    def count_non_exchangeable(self, ex_classes):
        self.debug("Counting non-exchangeable...")
        split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
        n = len(split_class_vars)
        cofs_split_class = []
        cofs_rest_classes = []
        for cof in self.count_f:
            cases_split_class = []
            cases_rest_classes = []
            if isinstance(cof, CountingFormula):
                n = cof.num()
                for i in range(0,n+1):
                    cases_split_class.append(cof.update(i))
                    cases_rest_classes.append(cof.update(n-i))
                cofs_split_class.append(cases_split_class)
                cofs_rest_classes.append(cases_rest_classes)
            else:
                if cof.interval.upper != portion.inf:
                    cases = cof.interval.upper +1
                else:
                    cases = cof.interval.lower
                for i in range(0, cases):
                    cof_split_class = CountingFormula(cof.dformula, "==", i)
                    cof_rest_classes = cof.shrink(i)
                    cases_split_class.append(cof_split_class)
                    cases_rest_classes.append(cof_rest_classes)
                cofs_split_class.append(cases_split_class)
                cofs_rest_classes.append(cases_rest_classes)
        combs_split_class =  list(itertools.product(*cofs_split_class))
        combs_rest_classes = list(itertools.product(*cofs_rest_classes))
        tot_count = 0
        for i in range(0,len(combs_rest_classes)):
            scv = list(map(lambda v: v.copy(),split_class_vars))
            rcv = list(map(lambda v: v.copy(),rest_classes_vars))
            comb_split_class = combs_split_class[i]
            comb_rest_classes = combs_rest_classes[i]
            self.debug(f"Solving combination {i}: {list(map(str,comb_split_class))} // {list(map(str,comb_rest_classes))}")
            count, choices = self.split(scv, rcv, comb_split_class, comb_rest_classes)
            tot_count += count
        return tot_count, {}

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
                    self.debug(v)
                    count *= v.domain.size()
            self.debug("\tDomain product: " + str(count))
        else:
            pass
            # classes = self.exchangeable_classes(vars)
            # if len(classes) == 1:
            #     var_idxs = classes[next(iter(classes))]
            #     dom = self.vars[var_idxs[0]]
            #     count, choices = self.filter_choices(dom)
            #     # count = math.factorial(available_choices) / math.factorial(self.n_vars)
            # else:
            #     count = self.split_inj(classes)
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

    def debug(self, s, *args):
        strargs = " ".join(list(map(str,args)))
        flat = str(s) + strargs
        ind = "\t"*self.lvl
        lines = flat.split("\n")
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
            pass
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
        for c in self.choice_f:
            self.apply_choice(self.choice_f[c])
        self.debug(self)
        if len(self.count_f) !=0:
            count, choices = self.apply_counts()
        else:
            count, choices = self.count_domains()
        self.debug("=========")
        self.debug("tot:" + str(count))
        return count, choices

    # def split_other_constraints(self, n_choices, cof, others):
    #     self.debug("Splitting on other constraints...")
    #     f = cof.dformula
    #     for split_cof in others:
    #         f = f & split_cof.dformula
    #     n_overlaps = f.domain.size()
    #     self.debug(f"Number overlaps: {n_overlaps}")
    #     count, choices = self.solve_subproblem(self.vars, self.type, {}, others, self.alt_type, {})
    #     count = count*n_choices - n_overlaps
    #     return count, choices

    def solve_subproblem(self, vars, type, choice_constr, count_constr, alt_type, choices):
        self.debug("\tSubproblem:")
        subproblem = SharpCSP(vars, type, choice_constr, count_constr, alt_type, choices, self.lvl+1)
        try:
            count = subproblem.solve()
            return count
        except Unsatisfiable:
            self.debug("\t==========\n\tUnsat: 0")
            return 0, {}
        
    def split_ex_classes(self, ex_classes):
        it_excls = iter(ex_classes)
        split_class = next(it_excls)
        rest_classes = []
        for i in it_excls:
            rest_classes = rest_classes + ex_classes[i]
        split_class_vars = self.get_vars(ex_classes[split_class])
        rest_classes_vars = self.get_vars(rest_classes)
        return (split_class_vars, rest_classes_vars)

    def split_inj(self, ex_classes):
        split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
        split_class_count, split_class_choices = self.solve_subproblem(split_class_vars, self.type, {}, {}, self.alt_type, self.previous_choices)
        if split_class_count != 0:
            rest_classes_count, rest_classes_choices = self.solve_subproblem(rest_classes_vars, self.type, {}, {}, self.alt_type,split_class_choices)
            return split_class_count * rest_classes_count, rest_classes_choices
        else:
            return 0, self.previous_choices

    def split(self, split_class_vars, rest_classes_vars, split_class_cofs, rest_classes_cofs):
        self.debug(f"Split class :")
        count = 0
        split_class_count, split_class_choices = self.solve_subproblem(split_class_vars, self.type, {}, split_class_cofs, self.alt_type, self.previous_choices)
        if split_class_count != 0:
            self.debug("Rest class: ")
            rest_classes_count, rest_classes_choices  = self.solve_subproblem(rest_classes_vars, self.type, {}, rest_classes_cofs, self.alt_type, split_class_choices)
            count = split_class_count * rest_classes_count
            self.debug("==========")
        return count, {}


    # def split_interval(self, satisfied, not_satisfied, ex_classes, f):
    #     fixed = self.get_vars(satisfied + not_satisfied)
    #     count_fixed = self.count_domains(fixed)
    #     split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
    #     count = 0
    #     has_ub = f.interval.upper != portion.inf
    #     if has_ub:
    #         cases = f.interval.upper + 1
    #     else:
    #         cases = f.interval.lower
    #     for val in range(0,cases):
    #         self.debug("val: "+str(val))
    #         f_split_class = CountingFormula(f.dformula, "==", val)
    #         f_rest_classes = f.shrink(val)
    #         split_class_vars = self.get_vars(ex_classes[split_class])
    #         rest_classes_vars = self.get_vars(rest_classes)
    #         split_class_constraints = {str(f_split_class.dformula): f_split_class}
    #         rest_classes_constraints = {str(f_rest_classes.dformula): f_rest_classes}
    #         split_class_count = self.solve_subproblem(split_class_vars, self.type, {}, split_class_constraints, self.alt_type)
    #         if split_class_count != 0:
    #             rest_classes_count = self.solve_subproblem(rest_classes_vars, self.type, {}, rest_classes_constraints, self.alt_type)
    #             count += count_fixed * split_class_count * rest_classes_count                
    #     if not has_ub:
    #         split_class_constraints = {str(f.dformula): f}
    #         split_class_count, split_class_choices  = self.solve_subproblem(split_class_vars, self.type, {} , split_class_constraints, self.alt_type, self.previous_choices)
    #         if split_class_count != 0:
    #             rest_classes_count, rest_classes_choices = self.solve_subproblem(rest_classes_vars, self.type, {}, {}, self.alt_type, split_class_choices)
    #             count += count_fixed * split_class_count * rest_classes_count 
        
    #     return count, rest_classes_choices


    # def split_eq(self, satisfied, not_satisfied, ex_classes, cof):
    #     diff = cof.num() - len(satisfied)
    #     self.debug("Counting fixed domains...")
    #     fixed = self.get_vars(satisfied + not_satisfied)
    #     count_fixed, _ = self.count_domains(fixed)
    #     count = 0
    #     for val in range(0,diff+1):
    #         cof_split_class = cof.update(val)
    #         cof_rest_classes = cof.update(diff - val)
    #         split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
    #         split_class_constraints = [cof_split_class]
    #         rest_classes_constraints = [cof_rest_classes]
    #         self.debug(f"Split for {val} {cof.dformula} in {len(split_class_vars)} {split_class_vars[0]} and {diff-val} in rest")
    #         self.debug(f"Split class :")
    #         split_class_count, split_class_choices = self.solve_subproblem(split_class_vars, self.type, {}, split_class_constraints, self.alt_type, self.previous_choices)
    #         if split_class_count != 0:
    #             self.debug("Rest class: ")
    #             rest_classes_count, rest_classes_choices  = self.solve_subproblem(rest_classes_vars, self.type, {}, rest_classes_constraints, self.alt_type, split_class_choices)
    #             count += count_fixed * split_class_count * rest_classes_count
    #             self.debug("==========")
    #             self.debug(f"Partial {val}: count={count}")
    #     return count, {} #rest_classes_choices

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