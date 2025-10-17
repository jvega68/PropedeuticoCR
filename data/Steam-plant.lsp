(defun source () (format t "
Source: Draper, N. and Smith, H. (1966). Applied regression analysis. New York: John Wiley. P. 122

response = pounds of steam used monthly
predictors are operating days/month and average atmospheric temperature, in degrees F.

Data set is as used by Draper and Smith to plot residuals versus responses. ~%"))

(let* ((names '("SteamUsed/mo[y]" "OpDays/mo" "AtmosTemp"))
       (data (transpose (split-list '(
    10.98    20  35.3
    11.13    20  29.7
    12.51    23  30.8
      8.4    20  58.8
     9.27    21  61.4
     8.73    22  71.3
     6.36    11  74.4
      8.5    23  76.7
     7.82    21  70.7
     9.14    20  57.5
     8.24    20  46.4
    12.19    21  28.9
    11.88    21  28.1
     9.57    19  39.1
    10.94    23  46.8
     9.58    20  48.5
    10.09    22  59.3
     8.11    22    70
     6.83    11    70
     8.88    23  74.5
     7.68    20  72.1
     8.47    21  58.1
     8.86    20  44.6
    10.36    20  33.4
    11.08    22  28.6
) 3))))

(source)
(make-reg :data data :data-names names
   :menu "Steam"))
