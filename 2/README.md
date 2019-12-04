## Notes

This test doesn't load anything from disk

## Python Runtime

```
(base) jkirk-JG5J:2 jessime.kirk$ time ./time_comp2.py 

real    0m44.907s
user    0m44.861s
sys     0m0.024s
```

## Nim Runtime

```
➜  2 git:(master) ✗ nim c -d:release "/Users/jessime.kirk/Code/me/advent2019/2/time_comp2.nim"
(base) jkirk-JG5J:2 jessime.kirk$ time ./time_comp2

real    0m1.432s
user    0m1.426s
sys     0m0.003s

```