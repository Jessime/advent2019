
## Size of input

```
➜  1 git:(master) ✗ ls -lh large_input.txt
-rw-r--r--  1 jessime.kirk  staff   572M Dec  1 14:44 large_input.txt
```

## Python Runtime

```
(base) ➜  1 git:(master) ✗ time ./fuel2.py           
2774842847744
./fuel2.py  192.17s user 0.39s system 99% cpu 3:12.69 total
```

## Nim

```
(base) ➜  1 git:(master) ✗ nim c -d:release "/Users/jessime.kirk/Code/me/advent2019/1/fuel2.nim" 
(base) ➜  1 git:(master) ✗ time ./fuel2 
2774842847744
./fuel2  68.71s user 0.37s system 99% cpu 1:09.15 total
```