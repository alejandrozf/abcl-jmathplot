;;;; abcl-jmathplot.asd

(asdf:defsystem #:abcl-jmathplot
  :description "Simple wrapper around jmathplot library using ABCL"
  :author "Alejandro Zamora <ale2014.zamora@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :components ((:mvn "com.github.yannrichet/JMathPlot/1.0.1")
               (:file "package")
               (:file "abcl-jmathplot")))
