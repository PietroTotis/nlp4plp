import portion 


class Domain(object):

    def __init__(self, name, elem):
        self.name = name
        self.elements = elem

    def __and__(self, rhs):
        i_name = f"({self.name} ∧ {rhs.name})"
        i_elem = self.elements & rhs.elements
        return Domain(i_name, i_elem)

    def __contains__(self, val):
        return val.elements in self.elements

    def __eq__(self, rhs):
        return self.elements == rhs.elements

    def __or__(self, rhs):
        u_name = f"({self.name} ∨ {rhs.name})"
        u_elem = self.elements | rhs.elements
        return Domain(u_name, u_elem)
    
    def __sub__(self, rhs):
        c_name = f"¬({rhs.name})"
        return Domain(c_name, self.elements - rhs.elements)
    
    def __str__(self):
        return f"{self.name}: {self.elements}"

    def disjoint(self,rhs):
        inter = self & rhs
        return inter.elements.empty

    def size(self):
        s = 0
        for e in self.elements:
            if e.left == portion.CLOSED and e.right == portion.CLOSED:
                s += e.upper - e.lower +1
            elif e.left == portion.OPEN and e.right == portion.OPEN:
                s += e.upper - e.lower -1
            else:
                s += e.upper - e.lower
            
        return s

class Structure(object):
    def __init__(self, name, type, spec, domain, size = None):
        self.name = name
        self.domain = domain
        self.type = str(type)
        self.spec = str(spec)=="true"
        self.size = size

    def __str__(self):
        str = f"{self.size}-{self.type}"
        if self.type == "sequences" and self.spec:
            str = "permutation"
        if self.type == "subset" and self.spec:
            str = f"multi-{str}"
        if self.type == "partition" and self.spec:
            str = f"any-{str}"   
        str += f" of entity {self.domain} ({self.name})" 
        return str