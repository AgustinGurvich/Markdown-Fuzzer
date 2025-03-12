<empty> ::= ""

<start> ::= " $$ " <func> " $$ "

<func> ::= "\\sin(" <expr> ")"  
         | "\\cos(" <expr> ")"  
         | "\\tan(" <expr> ")"  
         | "\\sec(" <expr> ")"  
         | "\\cot(" <expr> ")"  
         | "\\csc(" <expr> ")"  
         | <expr>

<expr> ::= <term> <expr_aux>
<expr_aux> ::= <empty> | <expr_op> <expr_aux>
<expr_op> ::= "+" <term> | "-" <term>

<term> ::= <factor> <term_aux>  
<term_aux> ::= <empty> | "*" <factor> <term_aux>  
            | " \\frac{" <factor> "}{" <factor> "} " <term_aux>

<power> ::= <factor> <power_aux>
<power_aux> ::= <empty> | "^{" <power> "}"

<factor> ::= <atomic> | "(" <func> ")"  
<atomic> ::= <nat> | <var> | <const>
<var> ::= "x" | "y" | "z" | "a" | "b" | "c" | "k" | "i" | "j"
<nat> ::= <digit>+
<const> ::= "\\alpha" | "\\beta" | "\\gamma" | "\\delta" | "\\Delta" | "\\theta" | "\\mu" | "\\pi"
