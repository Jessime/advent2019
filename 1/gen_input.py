#!/usr/bin/env python

import random

with open('large_input.txt', 'w') as outfile: 
    for i in range(100000000):
        x = random.randint(1, 111111)