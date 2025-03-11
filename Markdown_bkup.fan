from faker import Faker
from faker.providers import internet, lorem

fake = Faker()
fake.add_provider(internet)
fake.add_provider(lorem)

<aux> ::= <printable>+

<start> ::= <body>
<body> ::= <header> | <subheader> | <links> | <text>
<header> ::= "# " <text>
<subheader> ::= "## " <text>
<links> ::= "[" <content> "]" "(" <url> ")"
<url> ::= <aux> := fake.url()
<text> ::= "_" <content> "_" | "__" <content> "__" | "*" <content> "*" | "**" <content> "**"
<content> ::= <word>+ | <digit>+
<word> ::= <aux> := fake.sentence()

