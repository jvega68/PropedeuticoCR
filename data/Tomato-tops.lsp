dataset = Tomatos
begin description
Reference:  Robinson, P. and Neilsen, K. F. (1960).  Composite designs in agricultural research.  Canadian Journal of Soil Science 40, 168-176.

Tomato plants were grown in pots of North Gower clay loam with treatments consisting of various combinations of three added nutrients: Nitrogen (n), phosphrous (p) and potassiun (k).  The values in the data are coded:
P = (p-240)/160, N=(n-150)/100 and K = (k-210)/140.  The units of the original predictor values is pounds per acre.  The response is Yield = yield of tops 
( gm. dm./pot) 

There are two independent observations (pot) on each treatment combination. 

One case was likely a typing error and was changed as indicated below.

Data set could be used as an example of plotting exchangable data.  See
the mac for the data set with this info.
end description
begin variables
Col 0 = N
Col 1 = P
Col 2 = K
Col 3 = Pot
Col 4 = Yield
end variables
begin mean functions
th0 + th1*x1 + th2*x2 + th3*x3 + th4*(th1*x1 + th2*x2)^2
end mean functions
begin data
(
-1.5 0 0 1 5 
-1.5 0 0 2 5.14 
1.5 0 0 1 12.71 
1.5 0 0 2 14.29 
0 -1.5 0 1 5.52 
0 -1.5 0 2 4.2 
0 1.5 0 1 12.59 
0 1.5 0 2 10.43 
0 0 -1.5 1 9.96 
0 0 -1.5 2 12.24 
0 0 1.5 1 10.23 
0 0 1.5 2 10.38 
0 0 0 1 9.78 
0 0 0 2 9.4 
-1 -1 -1 1 6.82 
-1 -1 -1 2 7.83 
-1 -1 1 1 7.08 
-1 -1 1 2 6.21 
-1 1 -1 1 8.85 
-1 1 -1 2 8.58 
-1 1 1 1 6.97 
-1 1 1 2 6.07 
1 -1 -1 1 9.49 
1 -1 -1 2 7.8 
1 -1 1 1 7.8 
1 -1 -1 2 8.85 
1 1 -1 1 16.25 
1 1 -1 2 15.83 
;the above case was changed from 10.83 to 15.83, its very influential
;otherwise
1 1 1 1 15.48 
1 1 1 2 14.56 
-1 -1 0 1 5.38 
-1 -1 0 2 6.78 
-1 0 -1 1 5.9 
-1 0 -1 2 7.42 
-1 0 0 1 6.44 
-1 0 0 2 6.8 
-1 0 1 1 5.68 
-1 0 1 2 5.22 
-1 1 0 1 7.03 
-1 1 0 2 7.7 
0 -1 -1 1 9.23 
0 -1 -1 2 8.5 
0 -1 0 1 6.52 
0 -1 0 2 9.82 
0 -1 1 1 8.08 
0 -1 1 2 7.31 
0 0 -1 1 8.86 
0 0 -1 2 11.56 
0 0 1 1 12.62 
0 0 1 2 11.63 
0 1 -1 1 13.68 
0 1 -1 2 10.58 
0 1 0 1 11.9 
0 1 0 2 11.5 
0 1 1 1 13 
0 1 1 2 14.03 
1 -1 0 1 8.38 
1 -1 0 2 9.48 
1 0 -1 1 13.89 
1 0 -1 2 12.58 
1 0 0 1 12.6 
1 0 0 2 14.79 
1 0 1 1 13.23 
1 0 1 2 13.51 
1 1 0 1 14.4 
1 1 0 2 15.58 
)
