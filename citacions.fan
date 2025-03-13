from faker import Faker
import random

fake = Faker()

# Institution formats
INSTITUTIONS = ["University of ", "Institute of ", "College of ", " State University", " Research Institute"]

def citacion():
    num_authors = random.randint(1, 3)
    
    # Generate author names
    authors = []
    for i in range(num_authors):
        authors += [fake.last_name()]
    
    # Main author formatting
    if num_authors > 1:
        author_str = authors[0] + " et al."
    else:
        author_str = authors[0]
    
    # Generate institution
    place = fake.city()
    institution = random.choice(INSTITUTIONS) + " " + place
    
    # Generate a book title
    book_title = "The " + fake.word().capitalize() + " Book"
    
    # Generate a publication year
    year = random.randint(1990, 2025)
    
    # Construct citation and footnote
    citation = author_str + " from " + institution + " introduced " + book_title + ".[^1]\n"
    footnote = "[^1]: " + ", ".join(authors) + ": " + book_title + ", " + str(year) + ", " + institution

    return citation + "\n" + footnote

<citation> ::= <printable>+ := citacion() 
