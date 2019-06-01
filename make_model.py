#!/usr/bin/env python
# -*- coding: utf-8 -*-

'''
Make uus a classifier!
'''

from requests import get
from classify import create_classifier_from_data

ALL_CLASSIFICATIONS = [
    'piano',
    'xylophone',
    'piano_roll',
    'zither',
    'small_grid',
    'large_grid',
    'tonnetz',
    'circle',
]
classification_list = []
for classification in ALL_CLASSIFICATIONS:
    # Replace with loading local files!
    data = get(
        'http://www.tide-pool.ca/pattern-recognition/example-data/%s.json'
        % classification
    ).json()
    classification_list.append((data, classification))

classifier = create_classifier_from_data(classification_list)

# Write weights out somehow!
