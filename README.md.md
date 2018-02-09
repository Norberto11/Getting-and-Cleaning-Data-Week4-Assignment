GETTING AND CLEANING DATA ASSIGNMENT WEEK 4

The information provided in the repo contains the required files for the project assignment of Week 4 
------------------------------------------------------------------------------------------------------------------------------------------------
FILES INCLUDED
CodeBook.md
README.md
run_analysis.R
tidydata.txt
------------------------------------------------------------------------------------------------------------------------------------------------
DESCRIPTION OF THE DATA
- The data processed data is about experiments have been carried out with a group of 30 volunteers (subjects) wearing an smartphone.
- Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- Using its embedded accelerometer and gyroscope, data on 3-axial linear acceleration was captured.
- The tidy data compiles the mean and standard deviation of the measurements grouped by activity and subjects.

------------------------------------------------------------------------------------------------------------------------------------------------
SCRIPT
The script considers the data has been already downloaded and stored in a folder named 'UCI HAR Dataset' and library(dplyr) has been executed.

Steps for processing the data:
a) The process starts in creating different dataframes from the data provided and named these as the files:
	- features 	
	- x_test
	- y_test
	- subject_test
	- subject_train
	- x_train
	- y_train
	- activity_labels
	

b) Based on the data provided and analysing the content and dimensions of the different dataframes:
	'x_test' & 'x_train', represents the accelereometer and gyroscope measurement data for all individuals.	
	'features', contains the description of the variables for 'x_test' & 'x_train' data.      	      
      	'y_test' & 'y_train', represents the types of activity (ID) for each measurement on 'x_test' and 'x_train'.
        'subject_test' & 'subject_train', represent the corresponding subject number (1-30) for each measurement on x_test and x_train.
        'activity_labels', contains the description (associated to the activity ID) of the type of measurements on 'y_test' and 'y_train'
      	
Note: There are more observations on train data than on test data (70% for train data vs 30% for test data).

c) To solve the different items (1 to 5) on the assignmet it was followed the assignment steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
--------------------------------------------------------------------------------------------------------------------------------------------------
SPECIAL CONSIDERATIONS
- Step 4 was performed while executing step 1 in order to have all data with variables assigned at the begining.
- It was required to create acceptable variable (column) names using 'make.names' function. 
  Note: On this step the characters "-","(" and ")" are replaced by dots ".") in order to avoid an error (Error: Data source must be a dictionary) while executing the script.
- There are few variables that contains the string "mean" that does not have std deviation. These were not considered.
Note: To filter, it was used the strings ".mean." and ".std." which is equivalent to the original variable descrition "-mean(" and "-std(".   This ensured to obtain mean and std deviation 
on variables that has both type of measurements.
--------------------------------------------------------------------------------------------------------------------------------------------------



     