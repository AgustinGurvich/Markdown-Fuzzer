# This file covers task 6

from faker import Faker
from faker.providers import lorem

fake = Faker()
fake.add_provider(lorem)

LABELS = []

cool_sounding_titles =  ["Introduction", "Background and Motivation", "State of the Art in Crop Pulverization", "Challenges in Agrochemical Application", "Mathematical Formulation of Spray Dynamics", "Computational Fluid Dynamics in Sprayer Optimization", "Turbulence and Droplet Atomization in Agricultural Spraying", "Stochastic Models for Herbicide Dispersion", "Experimental Setup and Methodology", "Sensor-Based Monitoring of Spray Patterns", "Machine Learning for Spray Parameter Optimization", "Impact of Environmental Conditions on Spray Efficacy", "Case Study: Precision Agriculture in Herbicide Application", "Advancements in AI-Driven Smart Sprayers", "Reducing Spray Drift Through Adaptive Nozzle Control", "Comparative Study of Nozzle Types and Droplet Sizes", "Analysis of Spray Deposition Uniformity", "Interpreting Statistical Results in Agrochemical Efficiency", "Key Findings and Implications for Sustainable Agriculture", "Conclusion and Future Perspectives", "Towards Next-Generation Precision Pulverization"]

def generate_title():
    global LABELS
    title = cool_sounding_titles[fake.random_int(0, len(cool_sounding_titles) - 1)]
    LABELS.append(title)
    return title + "\n"

def generate_reference() -> str:
    if len(LABELS) == 0:
        return ""
    target_label = LABELS[fake.random_int(0, len(LABELS) - 1)]
    return "[" + target_label + "](#" + target_label.lower().replace(' ', '-') + ")"