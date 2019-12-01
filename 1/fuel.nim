from strutils import parseInt
from math import floorDiv

var total: int = 0
for line in lines "input.txt":
    var n: int = parseInt(line)
    total += floorDiv(n, 3) - 2
echo total
