<empty> ::= ""

<math> ::= " $$ " <func> " $$ "

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

<term> ::= <math_factor> <term_aux>  
<term_aux> ::= <empty> | "*" <math_factor> <term_aux>  
            | " \\frac{" <math_factor> "}{" <math_factor> "} " <term_aux>

<power> ::= <math_factor> <power_aux>
<power_aux> ::= <empty> | "^{" <power> "}"

<math_factor> ::= <atomic> | "(" <func> ")"  
<atomic> ::= <nat> | <var> | <const>
<var> ::= "x" | "y" | "z" | "a" | "b" | "c" | "k" | "i" | "j"
<nat> ::= <digit>+
<const> ::= "\\alpha" | "\\beta" | "\\gamma" | "\\delta" | "\\Delta" | "\\theta" | "\\mu" | "\\pi"
