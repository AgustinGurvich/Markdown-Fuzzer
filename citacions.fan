# This file covers task 8
from faker import Faker
import random

fake = Faker()

# Institution formats
INSTITUTIONS = ["University of", "Institute of", "College of", " State University", " Research Institute"]

def citation():
    authors = []
    random_int = fake.random_int(1, 4)
    for i in range(random_int):
        authors.append(fake.last_name())
    first_author = authors[0]
    if len(authors) > 1:
        first_author += " et al."
    
    place = fake.city()
    institution = random.choice(INSTITUTIONS) + " " + place

    book_title = "The " + fake.word().capitalize() + " Book"

    text = "[" + first_author + " from " + institution + " introduced " + book_title + "]" + "[^1]\n"
    
    footnote = "[^1]: " + "[" + " ,".join(authors) + " : " + institution + ". " + book_title + "]" 

    return text + "\n" + footnote



<start> ::= <citation> <year>
<citation> ::= <printable>+ := citation()
<year> ::= <digit>+

