import argparse

arg_parser = argparse.ArgumentParser()
arg_parser.add_argument("filename")
args = arg_parser.parse_args()

reserved = {
    'group' : 'GROUP',
    'given': 'GIVEN',
    'size' : 'SIZE',
    'take' : 'TAKE',
    'take_wr' : 'TAKE_WR',
    'observe' : 'OBSERVE',
    'property' : 'PROPERTY',
    'probability' : 'PROBABILITY',
    'exactly' : 'EXACTLY',
    'aggcmp' : 'AGGCMP',
    'rest' : 'REST',
    'and' : 'AND',
    'or' : 'OR',
    'not' : 'NOT',
    'all' : 'ALL',
    'nth' : 'NTH',
    'atleast' : 'ATLEAST',
    'atmost' : 'ATMOST',
    'union' : 'UNION',
    'rel' : 'REL',
    'sum': 'SUM',
    'average': 'AVERAGE', 
    'product' : 'MUL',
    'max' : 'MAX',
    'min' : 'MIN',
    'is_even' : 'EVEN',
    'is_odd' : 'ODD',
    'is_prime': 'PRIME',
    'all_same': 'ALLSAME',
    'all_diff': 'ALLDIFF',
    'none': 'NONE',
    'some': 'SOME'
}

# Tokens

t_DIVIDE  = r'/'
t_EQUALS = r'='
t_GT = r'>'
t_LT = r'<'
t_SEMI = r':'
t_SLASH : r'\\'
t_INT = r'[0-9]+'
t_FLOAT = r'[0-9]*\.[0-9]+'
t_COMMA = r','
t_LPAR  = r'\('
t_RPAR  = r'\)'
t_LSPAR  = r'\['
t_RSPAR  = r'\]'
t_STOP = r'\.'
t_ignore_COMMENT = r'%.*'
t_ignore_WHITES = r'\ +|\t|\n'

tokens = ['STOP', 'COMMA', 'DIVIDE', 'EQUALS', 'LT', 'GT', 'SEMI', 'SLASH', 'LPAR', 'RPAR', 'LSPAR', 'RSPAR', 'INT', 'FLOAT', 'LABEL'] + list(reserved.values())

def t_LABEL(t):
     r'[a-z][a-zA-Z\-\_0-9]*|[0-9]+\-[0-9\-]+'
     t.type = reserved.get(t.value,'LABEL')    # Check for reserved words
     return t

def t_newline(t):
    r'\n+'
    t.lexer.lineno += t.value.count("\n")

def t_error(t):
    print("Illegal character '%s'" % t.value[0])
    t.lexer.skip(1)

# Build the lexer
import ply.lex as lex
lex.lex()

def p_program(p):
    '''program : statement
            | statement program
    '''

def p_statement(p):
    '''statement : group
            | take
            | take_wr
            | size
            | given
            | union
            | observe
            | probability
            | property
    '''

def p_term(p):
    '''term : num
            | LABEL
            | LABEL LPAR t_list RPAR
    '''

def p_num(p):
    '''num : INT 
            | FLOAT
    ''' 

def p_t_list(p):
    '''t_list : term
            | term COMMA t_list
    '''

def p_group(p):
    '''group : GROUP LPAR LABEL RPAR STOP
            | GROUP LPAR rest RPAR STOP
    '''
def p_size(p):
    'size : SIZE LPAR LABEL COMMA INT RPAR STOP'

def p_rest(p):
    'rest : REST LPAR LABEL RPAR'

def p_take(p):
    '''take : TAKE LPAR LABEL COMMA LABEL COMMA INT RPAR STOP
            | TAKE LPAR rest COMMA LABEL COMMA INT RPAR STOP
    '''
def p_take_wr(p):
    '''take_wr : TAKE_WR LPAR LABEL COMMA LABEL COMMA INT RPAR STOP
                | TAKE_WR LPAR rest COMMA LABEL COMMA INT RPAR STOP
    '''
def p_given(p):
    ' given : GIVEN LPAR how_many RPAR STOP'

def p_property(p):
    'property : PROPERTY LPAR term COMMA LSPAR  t_list RSPAR RPAR STOP'

def p_proposition(p):
    '''proposition : term
          | AND LPAR logic COMMA logic RPAR
          | OR LPAR logic COMMA logic RPAR 
          | NOT LPAR logic RPAR
          | aggcmp
          | ALLSAME LPAR LABEL COMMA term RPAR
          | ALLDIFF LPAR LABEL COMMA term RPAR
    '''

def p_how_many(p):
    '''how_many : ALL LPAR LABEL COMMA proposition RPAR 
            | NONE LPAR LABEL COMMA proposition RPAR 
            | SOME LPAR LABEL COMMA proposition RPAR 
            | NTH LPAR INT COMMA LABEL COMMA proposition RPAR
            | ATLEAST LPAR INT COMMA LABEL COMMA proposition RPAR
            | ATMOST LPAR INT COMMA LABEL COMMA proposition RPAR
            | exactly
    '''

def p_logic(p):
    '''
    logic : proposition
            | how_many
    '''
def p_op(p):
    '''op : SUM 
        | MUL 
        | MIN
        | MAX
        | AVERAGE
    '''

def p_comp(p):
    '''comp : EQUALS SEMI EQUALS
         | LT
         | GT
         | GT EQUALS
         | EQUALS LT
         | EQUALS SLASH EQUALS
    '''

def p_rel(p):
    '''rel : REL LPAR num DIVIDE num COMMA t_list RPAR
           | REL LPAR FLOAT COMMA t_list RPAR
    '''

def p_short(p):
    '''short : EVEN 
            | ODD 
            | PRIME
    '''

def p_exactly(p):
    '''exactly : EXACTLY LPAR rel COMMA LABEL COMMA proposition RPAR 
                | EXACTLY LPAR INT COMMA LABEL COMMA proposition RPAR
    '''

def p_union(p):
    'union : UNION LPAR LABEL COMMA LSPAR t_list RSPAR RPAR STOP'


def p_aggcmp(p):
    '''
    aggcmp : AGGCMP LPAR LABEL COMMA term COMMA op COMMA comp COMMA INT RPAR
           | AGGCMP LPAR LABEL COMMA term COMMA op COMMA short RPAR
    '''
def p_probability(p):
    'probability : PROBABILITY LPAR logic RPAR STOP'

def p_observe(p):
    'observe : OBSERVE LPAR logic RPAR STOP'

def p_error(p):
    if p == None:
        token = "end of file"
    else:
        token = f"{p.type}({p.value}) on line {p.lineno}"
        #ignore propery as label
        if p.type != 'PROPERTY':
            print(f"Syntax error: Unexpected {token}")

import ply.yacc as yacc
yacc.yacc()

# while True:
#     try:
#         s = input('calc > ')   # use input() on Python 3
#     except EOFError:
#         break
file = open(args.filename,'r').read()
yacc.parse(file)

