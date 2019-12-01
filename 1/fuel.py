#!/usr/bin/env python

total = 0
with open('input.txt') as infile:
    for line in infile:
        n = int(line.strip())
        total += n // 3 - 2
print(total)
