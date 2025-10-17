(defun source () (format t "
Source: Practical Business statistics. 
State = twodigit postal code for states, lower 48
Sales = response = statewide sales of a nationally known toilet preparation in 1930
Blck = percent black by state
BP = state buying power measured as the McCann-Erickson index of per capita buying power.~%"))
(def data (transpose (split-list '(

DC	69.4	27.1	151.8
FL	56.9	29.4	104.9
LA	47.5	36.9	64.6
MS	47.5	50.2	47.8
SC	37.2	45.6	49.0
DE	30.6	13.7	111.2
MD	43.1	16.9	99.5
GA	37.5	36.8	54.8
AL	41.9	35.7	53.6
VA	30.6	26.8	62.8
NC	37.5	29.0	55.6
AR	36.9	25.8	54.4
TX	42.8	14.7	74.9
TN	43.1	18.3	61.3
CA	46.9	1.4	174.0
NY	36.9	3.3	144.7
NJ	20.6	5.2	121.8
IL	25.6	4.3	121.6
OH	22.9	4.7	108.7
MO	27.5	6.2	89.6
PA	18.7	4.5	105.2
MI	18.6	3.5	112.0
KY	14.4	8.6	63.3
CT	21.9	1.8	130.1
WV	12.2	6.6	76.0
OK	27.5	7.2	70.7
MA	14.7	1.2	132.6
IN	13.8	3.5	97.4
RI	15.6	1.4	117.7
KS	15.9	3.5	83.8
NV	17.5	.6	123.8
AZ	30	2.5	88.5
OR	21	.2	122.8
WY	11.2	.6	114.4
CO	24.7	1.1	101.7
WA	20.9	.4	112.8
NH	10.6	.2	104.5
MN	12.8	.4	99.4
UT	24.7	.2	101.0
IA	11	.7	89.6
NE	12.5	1.0	85.1
VT	9.8	.2	97.8
ME	10.5	.1	97.3
WI	10.5	.4	92.2
MT	12.8	.2	88.4
ID	9.8	.2	81.7
NM	9.8	.7	61.2
SD	6.9	.1	70.2
ND	4.4	.1	67.9
) 4)))
(def data-names '("State" "Sales" "Blck" "BP"))
(source)
(r-code :data data :data-names data-names :name "Toilet")

