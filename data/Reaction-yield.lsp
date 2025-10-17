(defun source () (format t "
Data are from Box and Draper p.370.  T1 and T2 are temperatures of a reaction at two stages and Lt1 and Lt2 are the log reaction times at each stage.  C is the concentratin of one of the reactants at stage 1.  These variables are the coded variables as given in Box and Draper.  The code following the data constructs the canonical variables as given on 369 in Box and Draper. The canonical variables are added to the data set and represented as c1-c5.~%"))

(let* ((names '("T1" "Lt1" "C" "T2" "Lt2" "y"))
       (data (transpose (split-list '(
 -1	-1	-1	-1	-1	49.8
1 	-1	-1	-1	-1	51.2
-1	1	-1	-1	-1	50.4
1	1	-1	-1	1	52.4
-1	-1	1	-1	-1	49.2
1	-1	1	-1	1	67.1
-1	1	1	-1	1	59.6
1	1	1	-1	-1	67.9
-1	-1	-1	1	-1	59.3
1	-1	-1	1	1	70.4
-1	1	-1	1	1	69.6
1	1	-1	1	-1	64.0
-1	-1	1	1	1	53.1
1	-1	1	1	-1	63.2
-1	1	1	1	-1	58.4
1	1	1	1	1	64.3
3	-1	-1	1	1	63.0
1	-3	-1	1	1	63.8
1	-1	-3	1	1	53.5
1	-1	-1	3	1	66.8
1	-1	-1	1	3	67.4
1.23	-.56	-.03	.69	.7	72.3
.77	-.82	1.48	1.88	.77	57.1
1.69	-.3	-1.55	-.5	.62	53.4
2.53	.64	-.1	1.51	1.12	62.3
-.08	-1.75	.04	-.13	.27	61.3
.78	-.06	.47	-.12	2.32	64.8
1.68	-1.06	-.54	1.5	-.93	63.4
2.08	-2.05	-.32	1	1.63	72.5
.38	.93	.25	.38	-.24	72
.15	-.38	-1.2	1.76	1.24	70.4
2.3	-.74	1.13	-.38	.15	71.8
) 6))))

(source)
(make-reg :data  data :data-names names
   :menu "Box-Draper"))

;(def coefs (quote ((-0.284 -0.138 0.743 0.589 0.026) (-0.639 -0.599 -0.003 ;-0.434 -0.213) (-0.254 0.255 0.225 -0.383 0.82) (-0.369 0.73 0.188 -0.222 ;-0.496) (0.558 -0.157 0.601 -0.518 -0.185))))

;(def data (list T1 T2 Lt1 Lt2 c))

;(def cc (* (nth 0 coefs) data))
;(def c0 (+ (nth 0 cc) (nth 1 cc) (nth 2 cc) (nth 3 cc) (nth 4 cc) -.203))

;(def cc (* (nth 1 coefs) data))
;(def c1 (+ (nth 0 cc) (nth 1 cc) (nth 2 cc) (nth 3 cc) (nth 4 cc) -.925))

;(def cc (* (nth 2 coefs) data))
;(def c2 (+ (nth 0 cc) (nth 1 cc) (nth 2 cc) (nth 3 cc) (nth 4 cc) .077))

;(def cc (* (nth 3 coefs) data))
;(def c3 (+ (nth 0 cc) (nth 1 cc) (nth 2 cc) (nth 3 cc) (nth 4 cc) -1.684))

;(def cc (* (nth 4 coefs) data))
;(def c4 (+ (nth 0 cc) (nth 1 cc) (nth 2 cc) (nth 3 cc) (nth 4 cc) 2.408))

;(send Box-Draper :add-data c0 "c0")
;(send Box-Draper :add-data c1 "c1")
;(send Box-Draper :add-data c2 "c2")
;(send Box-Draper :add-data c3 "c3")
;(send Box-Draper :add-data c4 "c4")
