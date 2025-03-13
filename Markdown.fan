from faker import Faker
from faker.providers import internet, lorem

fake = Faker()
fake.add_provider(internet)
fake.add_provider(lorem)

include('title.fan')
include('agronomics.fan')
include('table.fan')
include('latex.fan')
include('references.fan')
include('image.fan')
include('citacions.fan')

<start> ::= <title> "\n" <block>+ "\n" <citation>+
<block> ::= <headers> "\n" <body> "\n"
<headers> ::= <header> | <subheader>
<header> ::= "# " <header_phrase>
<subheader> ::= "## " <header_phrase>

<header_phrase> ::= <printable>+ := generate_title()

<body> ::= <text>+
<text> ::= <phrase> | <connections> | <emphasis> | <table> | <math> | <image>
<emphasis> ::= "_" <phrase> "_" | "__" <phrase> "__" | "*" <phrase> "*" | "**" <phrase> "**" | <link>
<link> ::= "[" <phrase> "]" "(" <url> ")"
<url> ::= <printable>+ := fake.url()
