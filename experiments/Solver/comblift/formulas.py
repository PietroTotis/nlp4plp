import portion
import operator

from structure import Domain
from problog.logic import Term


class CountingFormula(object):

    def __init__(self, formula, op, val):
        self.dformula = formula
        self.op = op
        self._val = val

    def __str__(self):
        return f"Nr. {self.dformula} {self.op} {self._val}"

    def get_operator(self):
        if self.op == ">":
            return operator.gt
        elif self.op == "<":
            return operator.lt
        elif self.op == "=<":
            return operator.le
        elif self.op == ">=":
            return operator.ge
        elif self.op == "==":
            return operator.eq
        elif self.op == "\=":
            return operator.ne

    def neg(self):
        if self.op in ["==","\="]:
            return CountingFormula(self.dformula.neg(), self.op, self._val)
        else:
            raise Exception("operation not supported")
    
    def num(self):
        if self.op in [">","<"]:
            return self._val +1 
        else:
            return self._val

    def update(self, val):
        return CountingFormula(self.dformula, self.op, val)


class DomainFormula(object):

    def __init__(self, container, formula, domain):
        self.container = container
        self.formula = formula
        self.domain = domain


    def __and__(self, rhs):
        dom = self.domain & rhs.domain
        if dom == self.domain:
            int_term = self.formula
        elif dom == rhs.domain:
            int_term = rhs.formula
        else:
            int_term = Term("inter", self.formula, rhs.formula)
        return DomainFormula(self.container, int_term, dom)
    
    def __contains__(self, other):
        return other.domain in self.domain

    def __eq__(self, rhs):
        return self.domain == rhs.domain

    def __hash__(self):
        return hash(self.formula)

    def __or__(self, rhs):
        dom = self.domain | rhs.domain
        if dom in self.domain:
            union_term = self.formula
        elif dom in rhs:
            union_term = rhs.formula
        else:
            union_term = Term("union",  self.formula, rhs.formula)
        return DomainFormula(self.container, union_term, dom)

    def __str__(self):
        str = f"{self.to_str(self.formula)} ({self.domain})"
        return str

    def copy(self):
        return DomainFormula(self.container,self.formula, self.domain)

    def disjoint(self, rhs):
        return self.domain.disjoint(rhs.domain)

    def neg(self):
        if self.formula.functor == "not":
            not_term = self.formula.args[0]
        else:
            not_term = Term("not", self.formula)
        dom = self.container - self.domain
        return DomainFormula(self.container, not_term, dom)

    def to_str(self, f):
        if f.functor == "inter":
            return " ∧ ".join(map(self.to_str, f.args))
        elif f.functor == "union":
            return " ∨ ".join(map(self.to_str, f.args))
        elif f.functor == "not":
            return f"¬{self.to_str(f.args[0])}"
        else:
            return str(f)
            

class InFormula(object):

    def __init__(self, struct, formula):
        self.struct = struct
        self.entity = formula

    def __str__(self):
        return f"{self.entity} is in {self.struct}"

class IntervalFormula(object):

    def __init__(self, formula, interval=portion.closed(0,portion.inf)):
        self.dformula = formula
        self.interval = interval

    def __and__(self, rhs):
        inter = self.interval & rhs.interval
        if self.interval in inter:
            formula = self.dformula
        elif rhs.interval in inter:
            formula = rhs.dformula
        else:
            formula = self.dformula & rhs.dformula
        return IntervalFormula(formula, inter) 

    def __str__(self):
        return f"Nr. {self.dformula} in {self.interval}"

    def add_lower_bound(self, val, open):
        if open:
            val +=1
        new_lb = portion.closed(val, portion.inf)
        self.interval = self.interval & new_lb

    def add_upper_bound(self, val, open):
        if open:
            val -=1
        new_ub = portion.closed(0, val)
        self.interval = self.interval & new_ub

    def shrink(self, val):
        if self.interval.upper == portion.inf:
            if self.interval.lower > val:
                lb = self.interval.lower - val
            else:
                lb = 0
            ub = self.interval.upper
            return IntervalFormula(self.dformula, portion.closed(lb,ub))
        else:
            if self.interval.lower > val:
                lb = self.interval.lower - val
            else:
                lb = 0
            ub = self.interval.upper - val
            return IntervalFormula(self.dformula, portion.closed(lb,ub))


class PosFormula(object):

    def __init__(self, struct, pos, df):
        self.struct = struct
        self.pos = pos.compute_value()
        self.dformula = df

    def __str__(self):
        return f"Position {self.pos}: {self.dformula}"