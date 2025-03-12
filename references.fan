from faker import Faker
from faker.providers import lorem

fake = Faker()
fake.add_provider(lorem)

LABELS = []

def generate_title():
    global LABELS
    title = fake.sentence()
    LABELS.append(title)
    return title

def generate_reference() -> str:
    if len(LABELS) == 0:
        return ""
    target_label = LABELS[fake.random_int(0, len(LABELS) - 1)]
    return "[" + target_label + "](#" + target_label.lower().replace(' ', '-') + ")"