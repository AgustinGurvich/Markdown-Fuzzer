import random
import os

crop_types = ["corn", "wheat", "soybeans", "barley", "rice"]
weed_types = ["dandelions", "thistles", "wild oats", "pigweed", "bindweed"]
detection_methods = ["AI-based", "drone-assisted", "satellite imagery", "camera monitoring", "sensor-equipped machines"]

def get_image_path() -> str:
    images = os.listdir("images")
    return "images/" + str(random.choice(images))

def get_image_title() -> str:
    crop = random.choice(crop_types)
    weed = random.choice(weed_types)
    detection = random.choice(detection_methods)
    title = "Image of " + str(crop) + " field with " + str(weed) + " detection using " + str(detection) + " technology"
    
    return title

<image> ::= "![" <image_title> "](" <image_path> " \"" <image_title> "\"){ width=50%, height=50% }\n"
<image_path> ::= <printable>+ := get_image_path()
<image_title> ::= <printable>+ := get_image_title()
