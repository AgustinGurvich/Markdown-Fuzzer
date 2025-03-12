import random

ENGINEERING_FIELDS = ["AI", "Software Engineering", "Agro-Tech", "Environmental Engineering", "Data Science", "Robotics"]  
TECHNIQUES = ["AI-powered pulverization", "Smart pulverization", "Machine learning-based pulverization", "Automated pulverization", "Edge computing for pulverization", "IoT-enhanced pulverization", "Neural network-based pulverization"]  
APPLICATIONS = ["sustainable agriculture", "precision farming", "efficient crop production", "soil health management", "automated crop monitoring", "eco-friendly pest control"]  
PROBLEMS = ["excessive chemical use", "low pulverization efficiency", "agricultural waste", "high energy consumption", "poor soil nutrient distribution", "overuse of water resources"]  
SOLUTIONS = ["AI-driven optimization", "smart pulverization techniques", "real-time software solutions", "edge AI for resource management", "predictive analytics for soil health", "autonomous farming systems"]  
FIELDS = ["sustainability", "precision farming", "environmental science", "biotechnology", "renewable energy", "climate-smart agriculture"]  
OUTCOMES = ["enhanced crop yields", "efficient resource management", "sustainable agro-tech practices", "lower carbon footprint", "optimized farm logistics", "improved soil fertility"]  
METHODS = ["computational", "data-driven", "deep learning-based", "reinforcement learning-based", "cloud-integrated", "real-time adaptive"]  

def gen_engineering_field() -> str:
    return random.choice(ENGINEERING_FIELDS)

def gen_tech() -> str:
    return random.choice(TECHNIQUES)

def gen_application() -> str:
    return random.choice(APPLICATIONS)

def gen_problem() -> str:
    return random.choice(PROBLEMS)

def gen_solution() -> str:
    return random.choice(SOLUTIONS)

def gen_field() -> str:
    return random.choice(FIELDS)

def gen_outcome() -> str:
    return random.choice(OUTCOMES)

def gen_method() -> str:
    return random.choice(METHODS)


<title> ::= <title_content> " 💃"

<title_content> ::= <descriptive> | <problem_solution> | <interdisciplinary> | <methodological>

<descriptive> ::= <tech> " for " <application> " in " <engineering_field>
<problem_solution> ::= "Addressing " <problem> " using " <solution> " in " <engineering_field>
<interdisciplinary> ::= "Bridging " <engineering_field> " and " <field> " for " <outcome>
<methodological> ::= "A " <method> " approach to " <application> " in " <engineering_field>

<engineering_field> ::= <printable>+ := gen_engineering_field()
<tech> ::= <printable>+ := gen_tech()
<application> ::= <printable>+ := gen_application()
<problem> ::= <printable>+ := gen_problem()
<solution> ::= <printable>+ := gen_solution()
<field> ::= <printable>+ := gen_field()
<outcome> ::= <printable>+ := gen_outcome()
<method> ::= <printable>+ := gen_method()
