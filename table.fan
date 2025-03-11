import random

COLS_NUMBER = 1

def header_row_gen() -> str:
    global COLS_NUMBER
    COLS_NUMBER = random.randint(1,10)

    row = "|"
    for i in range(COLS_NUMBER):
        row += " " + str(random.randint(1,1000)) + " |"
    
    return row + "\n"

def row_gen() -> str:
    row = "|"
    for i in range(COLS_NUMBER):
        row += " " + str(random.randint(1,1000)) + " |"
    
    return row + "\n"

def delim_gen() -> str:
    return " --- |"*COLS_NUMBER

<table> ::= <header_row> <delim_row> <row>+
<header_row> ::= "|" <columns> "\n" := header_row_gen()
<delim_row> ::= "|" <delim_columns> "\n"
<row> ::= "|" <columns> "\n" := row_gen()
<delim_columns> ::= " --- |"+ := delim_gen()
<columns> ::= (" " <table_number> " |")+
<table_number> ::= <digit>+
where 10 <= int(<table_number>) and int(<table_number>) <= 1000
