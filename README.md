# Advent of Code 2019

I'm using this as a chance to explore some `nim`, which recently hit verson 1.0.

Here's my basic procedure goals for this exercise:

1. Find a python solution as quickly as possible. This solution should be a nice balance of simple and pythonic.
  1. No real effort is made towards optimizations (runtime, memory, or design).
2. Create an "equivalant" nim solution. Obviously make sure that it also produces the correct result.
3. Repeat this for the second challenge of the day.
4. Generate a larger set of input data for the second problem.
  1. Use this data to time the two solutions.

This is just for fun, so I'm not making any personal goals to myself around trying to do all 50 challenges. 


## Details

### Machine:

```
MacBook Pro (15-inch, 2018)
macOS Mojave 10.14.1
2.6 GHz Intel Core i7
16 GB 2400 MHz DDR4
```

### Python

```
(base) ➜  advent2019 git:(master) ✗ python --version
Python 3.7.3
```

### Nim

```
(base) ➜  advent2019 git:(master) ✗ nim --version
Nim Compiler Version 1.0.4 [MacOSX: amd64]
Compiled at 2019-11-27
Copyright (c) 2006-2019 by Andreas Rumpf
```

## Summary

| Day | Python (s) | Nim (s) | Speedup (x) |
| --- | ------ | ------- | ----------- |
| 1  | 192.17  | 68.71 | 2.8 |
| 2 | 44.91  | 1.43 | 31.4 |