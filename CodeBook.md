STUDY DESIGN
-------------------------------------------------------------------------------------------------------------------------
Data was collected from the sources below and processed in order to get the mean and standard deviation of measurements (Test and Training).

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Data was refered to process measurements for Human Activity Recognition Using Smartphones Dataset.
 
The execution to obtain the tidy data was mainly based on dataframes and subsetting in some cases.

-------------------------------------------------------------------------------------------------------------------------
DIMENSIONS

The tidy data has a 69 columns (variables) and 181 rows (including column names).

--------------------------------------------------------------------------------------------------------------------------
TYPES OF VARIABLES

The tidy data set compiles the following different variables:

1) Variables to identified subjects and activities performed (3)

1	activity_labels
2	subject_id
3	activity_id

2) Measurement variables (66)

4	tBodyAcc.mean...X
5	tBodyAcc.mean...Y
6	tBodyAcc.mean...Z
7	tGravityAcc.mean...X
8	tGravityAcc.mean...Y
9	tGravityAcc.mean...Z
10	tBodyAccJerk.mean...X
11	tBodyAccJerk.mean...Y
12	tBodyAccJerk.mean...Z
13	tBodyGyro.mean...X
14	tBodyGyro.mean...Y
15	tBodyGyro.mean...Z
16	tBodyGyroJerk.mean...X
17	tBodyGyroJerk.mean...Y
18	tBodyGyroJerk.mean...Z
19	tBodyAccMag.mean..
20	tGravityAccMag.mean..
21	tBodyAccJerkMag.mean..
22	tBodyGyroMag.mean..
23	tBodyGyroJerkMag.mean..
24	fBodyAcc.mean...X
25	fBodyAcc.mean...Y
26	fBodyAcc.mean...Z
27	fBodyAccJerk.mean...X
28	fBodyAccJerk.mean...Y
29	fBodyAccJerk.mean...Z
30	fBodyGyro.mean...X
31	fBodyGyro.mean...Y
32	fBodyGyro.mean...Z
33	fBodyAccMag.mean..
34	fBodyBodyAccJerkMag.mean..
35	fBodyBodyGyroMag.mean..
36	fBodyBodyGyroJerkMag.mean..
37	tBodyAcc.std...X
38	tBodyAcc.std...Y
39	tBodyAcc.std...Z
40	tGravityAcc.std...X
41	tGravityAcc.std...Y
42	tGravityAcc.std...Z
43	tBodyAccJerk.std...X
44	tBodyAccJerk.std...Y
45	tBodyAccJerk.std...Z
46	tBodyGyro.std...X
47	tBodyGyro.std...Y
48	tBodyGyro.std...Z
49	tBodyGyroJerk.std...X
50	tBodyGyroJerk.std...Y
51	tBodyGyroJerk.std...Z
52	tBodyAccMag.std..
53	tGravityAccMag.std..
54	tBodyAccJerkMag.std..
55	tBodyGyroMag.std..
56	tBodyGyroJerkMag.std..
57	fBodyAcc.std...X
58	fBodyAcc.std...Y
59	fBodyAcc.std...Z
60	fBodyAccJerk.std...X
61	fBodyAccJerk.std...Y
62	fBodyAccJerk.std...Z
63	fBodyGyro.std...X
64	fBodyGyro.std...Y
65	fBodyGyro.std...Z
66	fBodyAccMag.std..
67	fBodyBodyAccJerkMag.std..
68	fBodyBodyGyroMag.std..
69	fBodyBodyGyroJerkMag.std..

Note: Measurement variables were modified from originals in order to be valid column names for the defined process.

---------------------------------------------------------------------------------------------------------------------------
VARIABLES CONTENTS

subject_id (numbers from 1 to 30, representing 30 individuals that took part of the test/training)
activity_id (numbers from 1 to 6, representing the different types of activities performed)
activity_labels (text strings to describe each type of activity, these are linked to the activity_id)
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


Measurement variables (66 variables taht contains the mean and standard deviation of measurements)
