from strutils import parseInt, split
from sequtils import map

var PROGRAM*: string = "1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,9,1,19,1,5,19,23,2,9,23,27,1,27,5,31,2,31,13,35,1,35,9,39,1,39,10,43,2,43,9,47,1,47,5,51,2,13,51,55,1,9,55,59,1,5,59,63,2,6,63,67,1,5,67,71,1,6,71,75,2,9,75,79,1,79,13,83,1,83,13,87,1,87,5,91,1,6,91,95,2,95,13,99,2,13,99,103,1,5,103,107,1,107,10,111,1,111,13,115,1,10,115,119,1,9,119,123,2,6,123,127,1,5,127,131,2,6,131,135,1,135,2,139,1,139,9,0,99,2,14,0,0"

proc run_program(program: var seq[int], val1: int, val2: int): seq[int] =
    program[1] = val1
    program[2] = val2
    var optcode: int
    var in_ptr1: int
    var in_ptr2: int
    var out_ptr: int
    var output: int
    for i in countup(0, program.len, 4):
        optcode = program[i]
        if optcode == 99:
            return program
        in_ptr1 = program[i+1]
        in_ptr2 = program[i+2]
        out_ptr = program[i+3]
        if optcode == 1:
            output = program[in_ptr1] + program[in_ptr2]
        elif optcode == 2:
            output = program[in_ptr1] * program[in_ptr2]
        program[out_ptr] = output

proc try_inputs*(program: string): int =
    var program_seq: seq[int] = program.split(',').map(parseInt)
    let expected: int = 19690720
    for i in 0..100:
        for j in 0..100:
            var copy: seq[int] = program_seq
            copy = run_program(copy, i, j)
            if copy[0] == expected:
                return 100 * i + j

if isMainModule:
    echo try_inputs(PROGRAM)
