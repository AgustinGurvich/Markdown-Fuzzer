<empty> ::= ""

<start> ::= " $$ " <expr> " $$ "

<expr> ::= <term> <expr_aux>
<expr_aux> ::= <empty> | <expr_op> <expr_aux>
<expr_op> ::= "+" <term> | "-" <term>

<term> ::= <power> <term_aux>
<term_aux> ::= <empty> | <term_op> <term_aux>
<term_op> ::= "*" <power> | "/" <power>

<power> ::= <factor> <power_aux>
<power_aux> ::= <empty> | "^" <power>

<factor> ::= <atomic> | "(" <expr> ")" 
<atomic> ::= <nat> | <var> 
<var> ::= <ascii_lowercase_letter>
<nat> ::= <digit>+
