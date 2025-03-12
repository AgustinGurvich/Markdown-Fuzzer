from faker import Faker
from faker.providers import internet, lorem

fake = Faker()
fake.add_provider(internet)
fake.add_provider(lorem)

include('agronomics.fan')
include('references.fan')

<aux> ::= <printable>+

<start> ::= <body>
# <body> ::= <header> <reference> | <subheader> | <links> | <text>
<body> ::= (<paragraph> "\n")+
<paragraph> ::= <header> "\n" <subheader> "\n" (<content> "\n")+
<header> ::= "# " <title>
<subheader> ::= "## " <text>
#<links> ::= "[" <text> "]" "(" <url> ")"
#<url> ::= <aux> := fake.url()
<content> ::= <connections> | <text>
<text> ::= "_" <phrase> "_" | "__" <phrase> "__" | "*" <phrase> "*" | "**" <phrase> "**" | "As said in " <reference>
#<word> ::= <aux> := fake.word()
<title> ::= <aux> := generate_title()
<reference> ::= <printable>+ := generate_reference()