# This file covers task 7

<empty> ::= ""

<math> ::= " $$ " <complex_expr> " $$ "

<complex_expr> ::= (<func> <func_aux>)+ | <expr>+ | <sum> | <prod>

<func> ::= "\\sin(" <complex_expr> ")"  
         | "\\cos(" <complex_expr> ")"  
         | "\\tan(" <complex_expr> ")"  
         | "\\sec(" <complex_expr> ")"  
         | "\\cot(" <complex_expr> ")"  
         | "\\csc(" <complex_expr> ")"  
         | "\\log(" <complex_expr> ")"  
         | "\\sqrt{" <complex_expr> "}"  
         | <expr>

<func_aux> ::= <empty> | <func_op> <complex_expr>
<func_op> ::= "+" | "-" | " \\cdot "

<expr> ::= <term> <expr_aux>
<expr_aux> ::= <empty> | <expr_op> <expr_aux>
<expr_op> ::= "+" <term> | "-" <term> | "\\pm " <term>

<term> ::= <power> <term_aux>  
<term_aux> ::= <empty>  
            | " \\cdot " <power> <term_aux>  
            | " \\frac{" <power> "}{" <power> "} " <term_aux>

<power> ::= <math_factor> <power_aux>
<power_aux> ::= <empty> | "^{" <complex_expr> "}"

<sum> ::= "\\sum_{" <var> "=" <nat> "}^{" <nat> "} " <complex_expr>+
<prod> ::= "\\prod_{" <var> "=" <nat> "}^{" <nat> "} " <complex_expr>+

<math_factor> ::= <atomic> | "(" <complex_expr> ")"  
<atomic> ::= <nat> | <var> | <const> | <factorial>
<factorial> ::= <var> "!"
<var> ::= "x" | "y" | "z" | "a" | "b" | "c" | "k" | "i" | "j"
<nat> ::= <digit>{1,10}
<const> ::= "\\alpha" | "\\beta" | "\\gamma" | "\\delta" | "\\Delta" | "\\theta" | "\\mu" | "\\pi" | "e"


<math_setting> ::= "The mathematical model is defined as follows: " <math> "\n"
                | "The equation is given by: " <math> "\n"
                | "The formula is expressed as: " <math> "\n"
                | "The mathematical expression is: " <math> "\n"
                | "The function is represented by: " <math> "\n"
                | "Dispersion can be calculated using: " <math> "\n"
                | "Product savings are calculated as: " <math> "\n"
                | "Crop yield can be estimated by: " <math> "\n"
                | "Spray pattern follows the distribution: " <math> "\n"