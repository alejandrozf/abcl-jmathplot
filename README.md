# abcl-jmathplot
### _Alejandro Zamora Fonseca <ale2014.zamora@egmail.com>_

A simple wrapper for the JMathPlot library using ABCL

Quickstart

Clone this repository to your Quicklisp local-projects (or other discoverable) folder

```
CL-USER> (require :abcl-contrib)
NIL
CL-USER> (require :abcl-asdf)
("ABCL-ASDF")
CL-USER> (asdf:load-system :quicklisp-abcl)
T
CL-USER> (ql:quickload :abcl-jmathplot)
To load "abcl-jmathplot":
  Load 1 ASDF system:
    abcl-jmathplot
; Loading "abcl-jmathplot"

(:ABCL-JMATHPLOT)
CL-USER> (abcl-jmathplot:quick-plot '(1 3 4 44 1 0) '(0 10 5 2 7 3) "test")
NIL
CL-USER>
```
You should get somethink like this:

![image](https://user-images.githubusercontent.com/8377636/174521308-bd57e2a6-6459-4d4c-aff7-061d0e8ef832.png)


## License

MIT
