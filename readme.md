Simple Local Judge
====

directory tree:
---

```
root
+-- judge
+-- readme.md
+-- problem1
|   +-- problem.txt
|   +-- tests
|       +-- test_1.in
|       +-- test_2.o
|        .
|        .
|        .
+-- problem2
|   ...
.
.
.
```

usage
---

For each problem, named <problem_dir_name>, write a file named solution.xx(xx is the extension of the file), and make sure the file is under directory <problem_dir_name>.

Then run `./judge <problem_dir_name>` to judge that problem.

Also you can run `./judge all` to judge all problems under the root directory.

Supported Language
---

It depends largely on how many language(complier or interpreter) you have.
You can easily add a new support, by editing the script judge:
``` bash
#1. Add a new case into function compile, if the language should be compiled. Make sure the output bin is named a.out.
# example
function compile {
    case $1 in
    cpp)
        g++ solution.cpp -o a.out -std=c++11
        ;;
    c)
        gcc solution.c -o a.out
        ;;
    esac
}
#2. Add a new case into function reallyJudge. Note that the word directory of the function is tests/, so you should use ../ to access the file solucion.xx.
# example
    case $filetype in
    cpp)
        runCode="../a.out"
        ;;
    c)
        runCode="../a.out"
        ;;
    esac
```

Supported Language list
* .c    ==> gcc
* .cpp  ==> g++ -std=c++11
* .py   ==> python 3
* .pl   ==> perl
* .p6   ==> perl6
* .hs   ==> runhaskell
