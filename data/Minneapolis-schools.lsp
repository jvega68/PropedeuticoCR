(defun source () (format t "
Reference: Minneapolis Star-Tribune, 1973.

The data are on elementary schools in the Minneapolis school district, 1972.  The possible 4 response variables are

  4BELOW = percentage of 4th graders scoring BELOW average on a standard 4th grade vocabulary test in 1972.
  4ABOVE = percentage of 4th graders scoring ABOVE average on a standard 4th grade vocabulary test in 1972.
  6BELOW = percentage of 6th graders scoring BELOW average on a standard 6th grade comprehension test in 1972.
  6ABOVE = percentage of 6th graders scoring BELOW average on a standard 6th grade comprehension test in 1972. 

The predictors are
  BP = percent of children in the school living with Both Parents
  AFDC = percent of children receiving Aid to Families with Dependent Children
  Poverty = percentage of persons in the school area who are above the federal poverty levels
  HSchl = percent of adults in the school area who have completed high school
  Enrol = number of childeren enrolled in the school
  Attend = average percentage of childern in attendance during the year
  Mobility = percentage of children who started in a school, but did not finish there
  PT-ratio = pupil-teacher ratio
  Minority = percent minority children in the area.
   ~%"))

(let* ((names '("4Below" "4Above" "6Below" "6Above" "BthPts" "AFDC" "Poverty" "HS" "Enrol" "Attend" "Mobility" "PT-ratio" "Minority" "School"))
       (data (transpose (split-list '(
26 20 29 17 77 34 90 63 468 93 86 28 25.5 "Agassiz"
11 36  6 59 90  8 98 82 602 95 52 27 1.5 "Armatage"
10 43  2 45 88  7 95 78 342 95 50 27 3.0 "Audubon"
30 18 33 12 73 35 88 58 896 93 74 27 35.4 "Bancroft"
23 25 23 30 91 10 97 72 473 95 77 27 5.9 "Barton"
52  4 54  2 45 80 56 31 507 92 75 24 77.1 "Bethune"
38 11 35 15 77 35 90 41 797 94 68 27 10.2 "Bremer" 
38  8 16 27 90 12 97 68 251 95 59 26 8.4 "Bryn Mawr"
 5 53 13 50 93  3 97 85 623 96 63 27 1.9 "Burroughs"
21 27  7 31 76 32 89 70 570 95 69 27 10.2 "Calhoun"
28 27 18 13 87 25 91 49 420 95 73 26 8.1 "Cleveland"
14 31 20 26 61 47 78 50 391 91 90 25 40.9 "Clinton"
19 23 25 18 90 14 97 58 510 96 66 28 4.3 "Cooper"
26 15 27 16 83 35 91 48 645 94 64 27 10.3 "Corcoran"
25 23 13 30 68 33 81 72 479 93 87 27 10.4 "Douglas"
28 17 19 26 84 17 96 52 393 95 69 27 8.1 "Ericsson"
18 33 23 32 86 19 92 68 1317 94 67 27 48.2 "Field-Hale"
14 46 24 33 92 14 95 75 383 95 74 28 2.6 "Fuller"
11 36 14 42 86  5 96 80 643 95 62 28 2.7 "Fulton"
31 15 45 10 62 57 76 42 425 91 86 26 41.0 "Greeley"
16 16 51  3 60 62 65 36 337 92 94 24 42.3 "Hall"
21 11 21 13 82 22 94 48 443 95 58 25 5.8 "Hamilton"
32 15 42  6 47 72 51 38 640 91 90 25 61.3 "Harrison"
38 13 37  7 71 58 83 37 459 91 65 27 17.9 "Hawthorne"
36  6 43  4 59 66 77 47 532 92 77 24 83.8 "Hay"
11 28 13 29 87 11 95 56 545 95 50 28 4.0 "Hiawatha"
30 23 28 12 80 33 91 43 410 94 84 28 2.0 "Holland"
19 30  5 28 89 12 96 55 459 95 58 28 2.7 "Howe"
20 12 35  4 69 50 82 44 443 92 86 26 23.5 "Irving"
13 27 10 32 91 10 96 66 395 96 36 28 3.8 "Keewaydin"
11 36  6 35 92  6 98 82 444 96 53 28 4.9 "Kenny"
11 51  2 57 85  7 92 83 564 94 54 29 14.8 "Kenwood"
19 31  4 49 91 10 99 79 273 95 72 26 1.5 "Lake Harriet"
28 23 28 19 85 27 93 46 462 94 72 28 6.2 "Lind"
32 20 34 17 81 25 89 50 644 94 66 28 15.0 "Longfellow"
26 23  9 28 87 12 97 52 322 95 73 25 3.1 "Loring"
33 22 41 14 74 45 85 45 567 93 75 26 11.9 "Lowell"
29 10 26 12 72 40 84 57 854 93 79 26 28.0 "Lyndale"
11 33 50  7 48 63 76 41 201 92 93 22 43.5 "Madison"
49 13 45 14 61 54 73 54 566 92 94 25 45.7 "Mann"
 7 62  4 54 79 19 93 75 267 94 90 28 5.9 "Marcy"
21 20 28 18 82 24 91 46 513 94 72 28 4.8 "McKinley"
12 44 11 35 87 13 97 55 488 95 66 29 7.8 "Minnehaha"
20 26 15 28 87 17 95 61 439 95 52 28 11.3 "Morris Park"
24 37 17 39 63 28 84 86 443 93 71 27 22.8 "Motley-Pratt"
 8 36 10 33 91  6 99 64 353 96 52 30 2.0 "Northrop"
17 14  6 42 93  5 98 74 218 96 77 26 10.6 "Page"
20 27 27 16 90 18 95 51 405 95 62 28 3.4 "Penn"
 9 45 17 28 84 12 93 57 379 95 56 27 0.5 "Pillsbury"
35  4 24 16 78 30 88 45 483 95 56 28 4.6 "Prescott"
27 11 28 16 77 29 87 40 392 93 77 25 10.2 "Putnam"
32 19 23 25 85 26 93 47 436 95 74 27 2.1 "Schiller"
29 13 31 13 80 30 91 54 635 93 66 28 12.3 "Seward"
25 14 14 14 80 35 89 40 230 94 87 27 3.5 "Sheridan"
14 32 25 30 88 22 99 60 401 95 56 29 21.3 "Shingle Creek"
15 25  6 34 85 19 94 51 528 95 45 28 6.1 "Standish"
23 19 32 27 84 15 88 61 281 95 79 26 13.2 "Tuttle"
17 35 17 33 92  8 96 60 575 95 48 27 3.1 "Waite Park"
19 15 19 19 67 37 88 35 192 95 77 22 6.1 "Webster"
16 20  6 35 87  6 93 66 334 97 48 28 0.6 "Wenonah"
17 17 26 15 67 56 79 61 504 90 86 28 25.2 "Whittier"
30 17 50  1 62 60 75 48 783 92 81 25 73.4 "Willard"
 8 44 19 20 90 10 98 74 433 95 49 27 5.4  "Windom"
  ) 14))))

(setf data1 (asin (sqrt (/ (select data (list 0 1 2 3 4 5 6 7)) 100))))
(setf data2 (asin (sqrt (/ (select data (list 9 10 11 12)) 100))))
(setf data3 (append data1 (list (nth 8 data)) data2 (list (nth 13 data))))


(source)
(make-reg :data data :data-names names
   :menu "MPLSchools"))
