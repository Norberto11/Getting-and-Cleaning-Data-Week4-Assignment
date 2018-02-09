
GETTING AND CLEANING DATA ASSIGNMENT WEEK 4




The information provided in the repo contains the required files for the project assignment of Week 4 
FILES INCLUDED:
- CodeBook.md
- README.md
- run_analysis.R
- tidydata.txt
----------------------------------------------------------------------------------------------------------------------------------------
DESCRIPTION OF THE DATA
- The data processed data is about experiments have been carried out with a group of 30 volunteers (subjects) wearing an smartphone.
- Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
- Using its embedded accelerometer and gyroscope, data on 3-axial linear acceleration was captured.
- The tidy data compiles the mean and standard deviation of the measurements grouped by activity and subjects.

----------------------------------------------------------------------------------------------------------------------------------------
SCRIPT
- The script considers the data has been already downloaded and stored in a folder named 'UCI HAR Dataset' and library(dplyr) has been executed.
- The process starts in creating different dataframes from the data provided.
- Based on the data provided it is analysed the content and dimensions of the different dataframe and merge when required.
- To execute the assignmet it was followed the assignment steps:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
----------------------------------------------------------------------------------------------------------------------------------------
SPECIAL CONSIDERATIONS
- Step 4 was performed while executing step 1 in order to have all data with variables assigned at the begining.
- It was required to create acceptable variable (column) names using 'make.names' function. 
- There are few variables that contains the string "mean" that does not have std deviation. These were not considered.



     
