(defun source () (format t "
Data is from the paper A statistical approach to catalyst development, part 1: the effect of process variables in the vapour phase oxidation of napthalene by N. L. Franklin, P. H. Pinchbeck, and F. Popper, Transactions of the Institute Chemical Engineers, 34, 1956.  The date are as taken from Box and Draper p. 391.

The three predictor variables are 
AN = log to base 10 of air to naphthalene ratio (z1 in L/pg)
Ctime = log of (contact time (z2 in s) times 10)
Btemp = .1 times (bed temperature(z3 in C) - 330)
Box and Draper suggest analysis in terms of log(air/n) and log(time), as in the original paper

There are 4 possible response variables
Yp = percentage mole conversion of naphthalene to phthalic anhydride
Yn = percentage mole conversion of naphthalene to naphthoquinone
Ym = percentage mole conversion of naphthalene to maleic anhydride
Yc = percentage mole conversion of naphthalene by complete oxidation to C0 and C02.

This is a good data set to illustrate bivariate SIR on a bivariate response using the two responses that show a C in a scatterplot matrix.~%"))

(let* ((names '("AN" "Ctime" "Btemp" "z1" "z2" "z3" "Yp" "Yn" "Ym" "Yc" ))
       (data (transpose (split-list '(
7	2.35	404	63.3	2.2	4.7	27.5
5	2.35	406	61.6	2.5	4.2	26.3
7	2.75	403	60.9	1.9	4.7	28.3
9	1.88	403	67.0	1.1	5	24.5
11	1.38	400	73.0	1.9	3.8	14.8
13	0.84	400	75.8	3.4	3	18
15.2	0.31	402	72.4	8.2	3.6	2
13	0.60	405	75.3	3	5	19.9
15	0.84	400	75.2	3.2	3.1	19
15	0.60	399	74.9	2.7	3.8	17.5
10	0.50	407	77.5	2.4	4.8	4
8	.38	428	80	1.2	4	0
7.2	.3	428	75.8	1.9	5.2	0
10	.85	402	72.5	1.7	4.3	11.8
16.5	.4	400	76.4	4	2	6
18	.8	395	77.5	3.8	2.8	9
20	1	397	73.7	3.1	3.3	11.4
10	.6	405	75.5	2.4	4.8	4
12.3	.59	405	78.0	3	5	0	
10	.86	404	72.5	1.7	4.3	11.8
12.9	.84	400	75.8	3.4	3	18
10.4	.62	385	67.8	12.6	4.2	2
12.3	.6	385	69.5	12	3.9	1
10	.88	386	71.2	6.4	4.1	0	
12.5	.89	383	77	5.3	4.4	4.3
9.05	.46	421	80	2.5	4.1	6.6
7.9	.4	413	79.6	3.7	4	0
21	.5	408	83.2	2	4.4	1.3
40.2	.2	406	78	6.8	2.5	7
10.7	.5	405	75.0	4.6	4.3	4.3
7	.59	405	74.5	5.7	5.4	0
29	.29	404	84.2	3.7	2.4	7.3	
25.3	.79	404	75.8	1.4	5.7	9
25	.39	404	83.8	1.5	3	7	
9.45	1.63	404	65.2	1.3	4.4	25.8
9	1.42	404	70.5	1.9	4.8	20	
25	.6	403	82.4	1.6	2.9	10.7
10.2	.3	403	62.5	14.5	3.7	1
7.25	.9	403	74.2	4.7	5.3	5.3
5.75	.435	403	66	11.7	6.9	0	
40.2	.43	401	81.4	3.7	4.1	8.3
12.5	1.07	401	73	2.2	1.8	22
10.7	1.7	401	71	2.2	4.1	22
16.2	.8	400	74.7	1.8	2.8	10.5
12.1	1.46	400	69.0	2.1	3	18.6
10	.61	400	74.0	6.8	5.4	0
11.5	.73	398	79	4.4	5.3	1
10.25	.87	397	77.5	4.1	3.3	.5
28.5	.5	396	79.2	3.1	5.9	2.6
12.15	.87	395	76.4	2.9	3.3	4.7
25.7	.45	392	75	2.5	3.4	7.1
12.4	1.2	392	79	2.3	5.2	9.6
12.15	.59	392	72	8.9	3.4	1.4
25.3	.66	391	83.5	1.6	2.3	8.3
19.4	1.05	391	82.5	1.4	3.3	7.2
24.7	1.6	390	75	.5	3.5	0
16.7	.87	390	82.5	2.8	5.3	6.3
15.5	1.19	390	77.3	1.6	4.5	9.8
40.2	.605	389	78.5	2.7	2.9	16.5
31.8	1.21	389	78.5	1.3	2.5	14.7
25.4	.905	389	84	1.8	2.5	10
30.4	.355	383	75.4	7.6	2.3	7.8
22.7	.51	383	80.5	4	3.9	4.2
71.5	.5	382	80.4	4.1	2.6	11.4
39.5	.5	382	83	7.3	3.4	8.8
12.4	1.19	382	72.1	2.9	2.6	7
58.5	.6	381	87	1.9	2.4	10.4
16	1.2	381	78.8	2.9	3.8	8.6
81	.7	380	84.1	1.3	5.2	9
29.6	.71	380	82.7	3.6	3.9	7.1
25.3	1.01	380	81	2.2	3.7	8
25	1.63	380	77.5	.5	4	15.7
16	.88	380	80	4	3.7	7.6
39.5	1.21	379	81.5	1.8	2.7	15
19.7	1.08	379	78.5	1.8	3.3	2.2
38	.81	378	82.5	2.1	3.75	8.8
30.9	1.23	373	77.5	2	2.8	11.6
76.5	.8	365	86.7	3.1	3.8	0
42	2.35	365	74.2	.5	3.4	24
103	1.25	334	87.5	4.6	3.5	10.5
) 7))))
(setf a0 (log (nth 0 data) 10))
(setf a1 (log (* (nth 1 data) 10) 10))
(setf a2 (* .01 (- (nth 2 data) 330)))

(setf data1 (append (list a0 a1 a2) data))

(source)
(make-reg :data data1 :data-names names
   :menu "Nap-Yn"))


;(send naphthalene :add-data x1 "x1")
;(send naphthalene :add-data x2 "x2")
;(send naphthalene :add-data x3 "x3")
;(send naphthalene :add-data (* x1 x1) "x1^2")
;(send naphthalene :add-data (* x2 x2) "x2^2")
;(send naphthalene :add-data (* x3 x3) "x3^2")
;(send naphthalene :add-data (* x1 x2) "x1x2")
;(send naphthalene :add-data (* x1 x3) "x1x3")
;(send naphthalene :add-data (* x2 x3) "x2x3")
(def Quad-fit (+ (* -112.06745 AN) (* -67.95318 (log 10) Ctime) (* -255.3371  Btemp)))
(defun Q-plot ()
  (let* ((p (plot-points quad-fit abc))
         (p1 (plot-points quad-fit yn ))
         )
    (send p :variable-label '(0 1) (list "bx" "ABC"))
    (send p1 :variable-label '(0 1) (list "bx" "Yn"))
    (send p :adjust-to-data)
    (send p1 :adjust-to-data)
    (send p :plot-controls)
    (send p1 :plot-controls)
    (send p1 :title "yn = a0 + (bx) + a1(bx)^2 + e. b=(b1,b2,b3)")
    (send p :title "bx vs ABC")))
         
