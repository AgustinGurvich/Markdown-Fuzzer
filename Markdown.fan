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
<text> ::= <table_setting> | <math_setting> | <phrase> | <connections> | <emphasis> | | <image>
<table_setting> ::= "As we can see in the following table: \n \n" <table> "\n" 
                | "The table below shows the results of the experiment: \n \n" <table> "\n"
                | "The following table displays the data collected: \n \n" <table> "\n"
<math_setting> ::= "The mathematical model is defined as follows: " <math> "\n"
                | "The equation is given by: " <math> "\n"
                | "The formula is expressed as: " <math> "\n"
<emphasis> ::= "_" <phrase> "_" | "__" <phrase> "__" | "*" <phrase> "*" | "**" <phrase> "**" | <link>
<link> ::= "[" <phrase> "]" "(" <url> ")"
<url> ::= <printable>+ := fake.url()
