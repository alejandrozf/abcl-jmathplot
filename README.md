# abcl-jmathplot
### _Alejandro Zamora Fonseca <ale2014.zamora@egmail.com>_

A simple wrapper for the JMathPlot library using ABCL

Quickstart


```
CL-USER> (require :abcl-contrib)
NIL
CL-USER> (require :abcl-asdf)
("ABCL-ASDF")
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

## License

MIT