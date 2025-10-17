dataset = WheatYield
begin description
Data are from Bean, JASA, 1930, p. 428.

Each case gives observations on the yield of wheat in an eastern state. 

Response = wheat yield , in bushles per acre
Predictors
Rainfall in inches during February, March and April
Average Temperature in degrees in March and April, 
Number of days in which snow cover exceeds 1 inch.
	
end description
begin variables
Col 0 = Rainfall
Col 1 = SnowDays
Col 2 = Temp
Col 3 = Yield
end variables
begin data
(
7 33 47 16.8 
3.5 10 55 14 
4.8 30 49 16.5 
6.4 18 47.5 19.3 
8.5 20 45.5 15.5 
1.4 33 50 20.8 
3 24 44 22.6 
5.3 8 47.7 17.5 
6.6 13 45.9 16.5 
9 8 54 7 
8 24 50 14 
8 16 52 12 
)
