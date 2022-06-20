;;;; abcl-jmathplot.lisp

(in-package #:abcl-jmathplot)

(defparameter *plot-2d-panel* nil)
(defparameter *jframe* nil)


(defconstant +add-line-plot-method+ (java:jmethod "org.math.plot.Plot2DPanel"
                                                  "addLinePlot" "java.lang.String" "double[]" "double[]"))
(defconstant +set-size-method+ (java:jmethod "javax.swing.JFrame" "setSize" "int" "int"))
(defconstant +set-content-pane-method+ (java:jmethod "javax.swing.JFrame" "setContentPane" "java.awt.Container"))
(defconstant +set-visible-method+ (java:jmethod "javax.swing.JFrame" "setVisible" "boolean"))


(defun quick-plot (x-list y-list title)
  (let ((*plot-2d-panel* (java:jnew "org.math.plot.Plot2DPanel"))
        (*jframe* (java:jnew "javax.swing.JFrame"))
        (x-double-array (java:jnew-array-from-list "double" x-list))
        (y-double-array (java:jnew-array-from-list "double" y-list)))

    (java:jcall +add-line-plot-method+ *plot-2d-panel* title x-double-array y-double-array)
    (java:jcall +set-size-method+ *jframe* 600 600)
    (java:jcall +set-content-pane-method+ *jframe* *plot-2d-panel*)
    (java:jcall +set-visible-method+ *jframe* t)))
