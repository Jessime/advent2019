#!/usr/bin/env python

total = 0
with open('large_input.txt') as infile:
    for line in infile:
        n = int(line.strip())
        fuel_for_mod = n // 3 - 2
        fuel_for_fuel = 0
        extra_left = fuel_for_mod
        while True:
            more_fuel = extra_left // 3 - 2
            if more_fuel < 0:
                break
            fuel_for_fuel += more_fuel
            extra_left = more_fuel
        total += fuel_for_mod + fuel_for_fuel
print(total)
