import portion
import math 
import itertools 

from problog.logic import Constant

from formulas import *
from structure import Domain


class Unsatisfiable(Exception):
    def __init__(self, value): 
        self.value = value 
  
    def __str__(self): 
        return(repr(self.value)) 

class Solver(object):
    """
    Sets up the decision variables from the problem
    """
    def __init__(self,problem):
        if problem.structure.type in ["sequence", "subset"]:
            pc = Constant(problem.container)
            var_dom = DomainFormula(pc, pc, problem.domains[problem.container])
            vars = [var_dom]*problem.structure.size
        else:
            n = problem.structure.size
            subset_dom = Domain(problem.type, portion.closed(1,n))
            vars = [subset_dom]*problem.domains[problem.container].size
        self.csp = SharpCSP(vars, problem.structure.type, problem.choice_formulas,  problem.count_formulas, problem.structure.spec)

    def solve(self):
        count, _ = self.csp.solve()
        return count

class SharpCSP(object):
    """
    Counts the possible assignments to a set of vars given choice/count constraints

    Attributes:
    vars : [DomainFormula]
        the variables representing the problem structure
    type : str
        structure type (same as Structure)
    choice_f : [PosFormula/InFormula]
        choice formulas to enforce
    count_f : [CountFormulas]
        set of counting formulas to enforce
    alt_type : boolean
        same as Structure
    fixed_choices: int
        subsets only: number of variables already set by choice constraints
    lvl: int
        nesting level for logging 
    """

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
            str += f"\t{c}\n"
        str += "Count constraints:\n"
        for c in self.count_f:
            str += f"\t{c}\n"
        str += "Solving choices:\n"
        for c in self.previous_choices:
            str += f"\t{c}:{self.previous_choices[c]}\n"
        str += "----------"
        return str

    # def add_choice(self, previous, name, val):
    #     if name in previous:
    #         previous[name] += val
    #     else:
    #         previous[name] = val
    #     return previous

    def apply_choice(self, chf):
        """
        Sets variables according to the choice constraints
        """
        if isinstance(chf, PosFormula):
            self.vars[chf.pos-1] = self.vars[chf.pos-1] & chf.dformula
            self.log("Choice set:", self.vars[chf.pos-1])
        if isinstance(chf, InFormula):
            #TODO: check number of in < size
            if self.fixed_choices > self.n_vars:
                raise Unsatisfiable("Too many elements for the subset size!")
            self.vars[self.fixed_choices] = chf.entity
            self.fixed_choices += 1
            self.log(f"Choice n.{self.fixed_choices} set:", self.vars[self.fixed_choices])

    def apply_count(self, current, others):
        """
        Applies the constraints to satisfy 'current' count
        """
        self.log("Propagating ", current)
        self.lvl += 1
        if current.op == "==":
            count, choices = self.count_eq(current, others)
        elif  current.op == "\=":
            count, choices = self.count_ne(current, others)
        elif current.op in ["<=", "<"]:
            count, choices = self.count_lt(current, others)
        else:
            count, choices = self.count_gt(current, others)
        self.lvl -=1
        return count, choices

    def apply_counts(self):
        """
        If vars are exchangeable we can apply a count otherwise we need to split and consider the combinations of count constraints
        """
        ex_classes = self.exchangeable_classes()
        if len(ex_classes)>1:
            count, choices = self.count_non_exchangeable(ex_classes)
        else:
            count, choices = self.count_exchangeable()
        return count, choices

    def count_bound(self, cof, lb, ub, others):
        """
        For each admissible value n (lb<=n<=ub) of the property p in cof constrain the problem to n variables satisfying p and sum over the different (independent) counts
        """
        self.log(f"Expanding bounds [{lb},{ub}]...")
        count = 0
        for i in range(lb,ub+1):
            cof_eq = CountingFormula(cof.dformula, "==", i)
            vars = list(map(lambda v: v.copy(), self.vars))
            eq_count, _ = self.solve_subproblem(vars, self.type, {}, [cof_eq] + others, self.alt_type, {})
            count += eq_count
        return count, {}

    def count_eq(self, cof, others):
        """
        - Check how many vars already satisfy, can satisfy, cannot satisfy the property
        - If there is no var that can satisfy, either is already sat or not
        - If there are vars that can satisfy, set m vars to satisfy the property where m is how many more entities there need to be, set the others to not satisfy.
        - If we had enough variables go on with other constraints
        """
        satisfied, not_satisfied, maybe = self.count_satisfied(cof.dformula.domain)
        diff = cof.num() - len(satisfied)
        ex_classes = self.exchangeable_classes(maybe)
        if len(maybe) == 0:
            n_choices = 1
            if diff == 0:
                # count, choices = self.count_domains()
                self.log(cof, " already satisfied")
                return self.split_on_constraints(n_choices, others)
            else:
                self.log(cof, " is unsat here")
                raise Unsatisfiable("Unsat!")
        else: #len(ex_classes) == 1:
            dom = self.vars[next(iter(ex_classes))]
            self.log(f"{len(maybe)} exchangeable free vars: {dom}")
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
            if diff != 0:
                raise Unsatisfiable("Unsat!")
            else:
                return self.split_on_constraints(n_choices, others)
        return count, choices

    def count_exchangeable(self):
        """
        Take one count constraint and apply it
        """
        self.log("Counting exchangeable...")
        cof = self.count_f[0]
        others = self.count_f[1:]
        count, choices = self.apply_count(cof, others)
        return count, choices

    def count_gt(self, cof, others):
        return self.count_bound(cof, cof.num(), self.n_vars, others)

    def count_lt(self, cof, others):
        return self.count_bound(cof, 0, cof.num(), others)

    def count_non_exchangeable(self, ex_classes):
        """
        If vars are not exchangeable we split the problem into class | rest
        Counting constraints need to be split according to the possible combinations 
        Example:
        Split classes french | students with cofs on dutch=2 and french=1
        for each cof prop==n the count can be split between the two classes with i elements on the left and n-1 elements on the right, i.e. french==1 | french==0 and french==0 | french==1.
        But with many cofs we need to consider all the combinations of the two so:
        french==0 & dutch==0 | french==1 & dutch==2
        french==1 & dutch==0 | french==0 & dutch==2 ... 
        """
        self.log("Counting non-exchangeable...")
        split_class_vars, rest_classes_vars = self.split_ex_classes(ex_classes)
        n = len(split_class_vars)
        cofs_split_class = []
        cofs_rest_classes = []
        for cof in self.count_f:
            cases_split_class = []
            cases_rest_classes = []
            if cof.op == "==":
                n = cof.num()
                for i in range(0,n+1):
                    cases_split_class.append(cof.update(i))
                    cases_rest_classes.append(cof.update(n-i))
                cofs_split_class.append(cases_split_class)
                cofs_rest_classes.append(cases_rest_classes)
            else:
                n = cof.num()
                for i in range(0, n):
                    cof_split_class = CountingFormula(cof.dformula, "==", i)
                    cof_rest_classes = CountingFormula(cof.dformula, cof.op , cof._val-i)
                    cases_split_class.append(cof_split_class)
                    cases_rest_classes.append(cof_rest_classes)
                # if the constraint is gt add option that left satisfies it and right is free
                if cof.op in [">", ">="]:
                    cases_split_class.append(cof)
                    n = -1 if cof.op==">" else 0
                    cof_rest_classes = CountingFormula(cof.dformula, cof.op , n)
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
            self.log(f"Solving combination {i}: {list(map(str,comb_split_class))} // {list(map(str,comb_rest_classes))}")
            count, choices = self.split(scv, rcv, list(comb_split_class), list(comb_rest_classes))
            tot_count += count
        return tot_count, {}

    def count_ne(self, cof):
        overcount = self.count_domains()
        cof.op = "=="
        nogood = self.count_eq(cof)
        return overcount - nogood

    def count_domains(self, vars=None):
        self.log("Counting domains:")
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
                    self.log(v)
                    count *= v.domain.size()
            self.log("\tDomain product: " + str(count))
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

    def exchangeable_classes(self, vars = None):
        """
        Groups variables with same domains in a dict
        """
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

    def log(self, s, *args):
        strargs = " ".join(list(map(str,args)))
        flat = str(s) + strargs
        ind = "\t"*self.lvl
        lines = flat.split("\n")
        indented = list(map(lambda l: ind+l, lines))
        final = "\n".join(indented)
        print(final)
    
    def solve(self):
        for c in self.choice_f:
            self.apply_choice(c)
        self.log(self)
        if len(self.count_f) !=0:
            count, choices = self.apply_counts()
        else:
            count, choices = self.count_domains()
        self.log("=========")
        self.log("tot:" + str(count))
        return count, choices

    def split_on_constraints(self, n_choices, others):
        self.log("Splitting on other constraints...")
        if len(others) == 0:
            count, choices = self.count_domains()
        else:
            self.log("Splitting on other constraints...")
            count, choices = self.solve_subproblem(self.vars, self.type, {}, others, self.alt_type, {})
        return n_choices*count, choices

    def solve_subproblem(self, vars, type, choice_constr, count_constr, alt_type, choices):
        self.log("\tSubproblem:")
        subproblem = SharpCSP(vars, type, choice_constr, count_constr, alt_type, choices, self.lvl+1)
        try:
            count = subproblem.solve()
            return count
        except Unsatisfiable:
            self.log("\t==========\n\tUnsat: 0")
            return 0, {}
        
    def split_ex_classes(self, ex_classes):
        """
        Groups the exchangeable classes as left | right by taking one as left and uniting the others
        """
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
        self.log(f"Split class :")
        count = 0
        split_class_count, split_class_choices = self.solve_subproblem(split_class_vars, self.type, {}, split_class_cofs, self.alt_type, self.previous_choices)
        if split_class_count != 0:
            self.log("Rest class: ")
            rest_classes_count, rest_classes_choices  = self.solve_subproblem(rest_classes_vars, self.type, {}, rest_classes_cofs, self.alt_type, split_class_choices)
            count = split_class_count * rest_classes_count
            self.log("==========")
        return count, {}