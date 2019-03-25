import itertools


class unique_element:
    def __init__(self,value,occurrences):
        self.value = value
        self.occurrences = occurrences

def perm_unique(elements):
    eset=set(elements)
    listunique = [unique_element(i,elements.count(i)) for i in eset]
    u=len(elements)
    return perm_unique_helper(listunique,[0]*u,u-1)

def perm_unique_helper(listunique,result_list,d):
    if d < 0:
        yield tuple(result_list)
    else:
        for i in listunique:
            if i.occurrences > 0:
                result_list[d]=i.value
                i.occurrences-=1
                for g in  perm_unique_helper(listunique,result_list,d-1):
                    yield g
                i.occurrences+=1


n = 15
f = 5
t = 15
program = ""

for i in range(0,n):
    program += "0.1::ev" + str(i) + ".\n"

for i in range(f,t+1):
    # for neg in range(0,n-i+1):
    negations = [1]*i + [0]*(n-i)
    negs = perm_unique(negations)#set(list(itertools.permutations(negations)))
    for perm in negs:
        program+="exactly%s :-"%(i)
        for j,pos in enumerate(perm):
            if pos:
                program+="ev"+str(j)
            else:
                program+="\+ev"+str(j)
            if j < n-1:
                program+=", "
            else:
                program+='.\n'

for i in range(f, t+1):
    program += "what :- exactly"+str(i)+".\n"
program+="query(what)."
print(program)
