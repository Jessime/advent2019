from strutils import parseInt
from math import floorDiv

var total: int = 0
for line in lines "large_input.txt":
    var n: int = parseInt(line)
    var fuel_for_mod: int = floorDiv(n, 3) - 2
    var fuel_for_fuel: int = 0
    var extra_left: int = fuel_for_mod
    while true:
        var more_fuel: int = floorDiv(extra_left, 3) - 2
        if more_fuel < 0:
            break
        fuel_for_fuel += more_fuel
        extra_left = more_fuel 
    total += fuel_for_mod + fuel_for_fuel
echo total
