import portion
import operator

from structure import Domain
from problog.logic import And, Or, Not


class CountingFormula(object):

    def __init__(self, problem, formula):
        self.problem = problem
        self.formula = DomainFormula(problem, formula.args[0])
        self.op = formula.functor[1:-1]
        self.num = formula.args[1].compute_value()
    
    def compute(self):
        return self.formula.compute()

    def get_operator(self):
        if self.op == ">":
            return operator.gt
        elif self.op == "<":
            return operator.lt
        elif self.op == "=<":
            return operator.le
        elif self.op == "=>":
            return operator.ge
        elif self.op == "==":
            return operator.eq
        elif self.op == "\=":
            return operator.ne

    def neg(self):
        if self.op in ["==","\="]:
            self.formula = self.formula.neg()
        return self

    def __str__(self):
        return f"{self.formula} {self.op} {self.num}"

class DomainFormula(object):

    def __init__(self, problem, formula):
        self.problem = problem
        self.formula = formula
        self.domain = None

    def compute(self):
        # if self.domain is None:
        if self.formula.functor == "inter":
            lf = DomainFormula(self.problem, self.formula.args[0])
            lf.compute()
            rf = DomainFormula(self.problem, self.formula.args[1])
            rf.compute()
            self.domain = lf.domain & rf.domain
        elif self.formula.functor == "union":
            lf = DomainFormula(self.problem, self.formula.args[0])
            lf.compute()
            rf = DomainFormula(self.problem, self.formula.args[1])
            rf.compute()
            self.domain = lf.domain | rf.domain
        elif self.formula.functor == "not":
            arg = DomainFormula(self.problem, self.formula.args[0])
            arg.compute()
            cont = self.problem.domains[self.problem.container]
            self.domain =  cont - arg.domain
        else:
            const = self.problem.get_entity(self.formula)
            if const is not None:
                self.domain = singleton = Domain(const, portion.singleton(const))
            else:
                self.domain = self.problem.domains[str(self.formula)]
        return self.domain

    def __and__(self, rhs):
        int_term = And(self.formula, rhs.fomula)
        return DomainFormula(self.problem, int_term)

    def __or__(self, rhs):
        union_term = Or(self.formula, rhs.fomula)
        return DomainFormula(self.problem, union_term)

    def neg(self):
        if self.formula.functor == "not":
            not_term = self.formula.args[0]
        else:
            not_term = Not('not', self.formula)
        return DomainFormula(self.problem, not_term)

    def __contains__(self, val):
        self.compute()
        val.compute()
        return val.domain in self.domain

    def to_str(self, f):
        # if f.functor in ["'=='","'\\='","'<'","'<='","'>'","'>='"]:
        #     s = f" {f.functor[1:-1]} "
        #     return s.join(map(self.to_str, f.args))
        if f.functor == "inter":
            return " ∧ ".join(map(self.to_str, f.args))
        elif f.functor == "union":
            return " ∨ ".join(map(self.to_str, f.args))
        elif f.functor == "not":
            return f"¬{self.to_str(f.args[0])}"
        else:
            return str(f)

    def __str__(self):
        str = self.to_str(self.formula)
        return str


class InFormula(object):

    def __init__(self, struct, const):
        self.struct = struct
        self.const = const

    def __str__(self):
        return f"{self.const} is in {self.struct}"


class PosFormula(object):

    def __init__(self, struct, pos, df):
        self.struct = struct
        self.pos = pos.compute_value()
        self.dformula = df

    def __str__(self):
        return f"position {self.pos}: {self.dformula}"