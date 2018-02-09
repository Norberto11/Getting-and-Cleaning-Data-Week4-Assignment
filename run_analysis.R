## CLEANING DATA ASSIGNMENT WEEK 4
   
## 1) Obtaining features data. (From this point all data has been downloaded to the 'UCI HAR Dataset' folder)
      features<-read.csv("./features.txt",header=FALSE,sep="")
    
## 2) Obtaining test data (subject, x, y)
      subject_test<-read.csv("./test/subject_test.txt",header=FALSE,sep="")
      
      x_test<-read.csv("./test/x_test.txt",header=FALSE,sep="")
    
      y_test<-read.csv("./test/y_test.txt",header=FALSE,sep="")
    
## 3) Obtaining train data (subject, x, y).
      
      subject_train<-read.csv("./train/subject_train.txt",header=FALSE,sep="")
      
      x_train<-read.csv("./train/x_train.txt",header=FALSE,sep="")
      
      y_train<-read.csv("./train/y_train.txt",header=FALSE,sep="")
      
## 4) Obtaining activity data and naming the columns
      activity_labels<-read.csv("./activity_labels.txt",header=FALSE,sep="")
      names(activity_labels)<-c("activity_id","activity_labels")
  
### ITEM 1. Merges the training and the test sets to create one data set.
## 5) creating the 'full_set' data frame
      full_set<-rbind(x_test,x_train)
      
## 6) Adding the names to the variables on 'full_set' and naming the variables as acceptable variable names
      names(full_set)<-features[,2]
      valid_variable_names <- make.names(names=names(full_set), unique=TRUE, allow_ = TRUE)
      names(full_set) <- valid_variable_names
      
## 7) Creating a dataframe (full_subjects) with test & train subjects and naming the column as "subject_id"
      full_subjects<-rbind(subject_test,subject_train)
      names(full_subjects)<-"subject_id"

## 8) Creating a dataframe with y_test and y_train  and naming the column as "activity_id"
      full_activity<-rbind(y_test,y_train)
      names(full_activity)<-"activity_id"

## 9) Merging the dataframes full_set, full_subjects and full_activity to obtain the final complete data set (final_set)
      final_set<-cbind(full_subjects,full_activity,full_set)
      
### ITEM 2. Extracts only the measurements on the mean and standard deviation for each measurement
## 10) Selecting columns with mean and std deviation
     final_mean_std<-select(final_set,subject_id,activity_id,contains(".mean."),contains(".std."))
      
### ITEM 3. Uses descriptive activity names to name the activities in the data set
## 11) Merging the measurements data and adding a column with activity_lables corresponding to "activity_id"
     final_set_labels<-merge(activity_labels,final_mean_std,by="activity_id",all.x=TRUE)

### ITEM 4. Appropriately labels the data set with descriptive variable names. 
## This step was already performed while executing ITEM 1 on step 6,7 and 8
     
### ITEM 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.     
## 12) Obtaining the final data grouping by activity and subject and averaging the measurements, then writing in a file.
    final_set_avg<-final_set_labels%>%group_by(activity_labels,subject_id)%>%summarize_all(funs(mean))
    write.table(final_set_avg,file="tidy_data.txt",sep="\t",row.names=FALSE)
 
     
