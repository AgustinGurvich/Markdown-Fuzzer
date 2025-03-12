from faker import Faker
from faker.providers import internet, lorem

fake = Faker()
fake.add_provider(internet)
fake.add_provider(lorem)

include('title.fan')

<start> ::= <title> "\n" <block>+
<block> ::= <headers> "\n" <body> "\n"
<body> ::= <links> | <text>
<headers> ::= <header> | <subheader>
<header> ::= "# " <text>
<subheader> ::= "## " <text>
<links> ::= "[" <content> "]" "(" <url> ")"
<url> ::= <printable>+ := fake.url()
<text> ::= "_" <content> "_" | "__" <content> "__" | "*" <content> "*" | "**" <content> "**"
<content> ::= <word>+ | <digit>+
<word> ::= <printable>+ := fake.sentence()
