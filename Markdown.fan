<start> ::= <paragraphs>
<paragraphs> ::= <paragraph> "\n" <paragraphs> | <paragraph>
<paragraph> ::= <header> <text>
<header> ::= "# " "TITULO1 \n" | "## " "TITULO2 \n" | "### " "TITULO3 \n" | "#### " "TITULO4 \n"
<text> ::= <link> | <sentence>
<link> ::= "[" <link_text> "]" "(https://www.google.com/) \n"
<link_text> ::= "link1" | "link2" | "link3" | "link4" 
<sentence> ::= "AAAAAA. \n"