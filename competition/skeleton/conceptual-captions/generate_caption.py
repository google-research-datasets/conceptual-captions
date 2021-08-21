"""An image captioning model that returns a random caption for input image."""

import argparse
import random

parser = argparse.ArgumentParser()
parser.add_argument('image_path', help='Path to input image')
args = parser.parse_args()

# A randomly selected caption will be returned for the input image.
captions = [
    'child playing in a park',
    'actor attents a premiere',
    'the view of a city',
    'delicious food served on table',
    'musical artist performs at a festival',
]

idx = random.randint(0, len(captions) - 1)
print(captions[idx])
