
###########################################################################################
##
## Step 0 : Preparations 
##
###########################################################################################

library(dplyr)

##################################################
## Download/load Dataset from URL/local.  
##################################################

dsURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dsFile <- "UCI HAR Dataset.zip"

if(!file.exists(dsFile)){
  download.file(dsURL,destfile = dsFile,mode='wb')
}


##################################################
## Unzip the Dataset 
##################################################

dsFolder <-"UCI HAR Dataset"

if(!file.exists(dsFolder)){
  unzip(zipfile = dsFile)
}

featureFile <- file.path(dsFolder,"features.txt")
activityLabelFile <- file.path(dsFolder,"activity_labels.txt")

###########################################################################################
## 
## Step 1 : Merges the training and the test data sets to create one data set
##
###########################################################################################


##################################################
## Load training data set 
##################################################

xTrainFile <- file.path(dsFolder,"train","X_train.txt")
yTrainFile <- file.path(dsFolder,"train","Y_train.txt")
tSubjectFile <- file.path(dsFolder,"train","subject_train.txt")


trainActivity <- tbl_df(read.table(yTrainFile)) 
trainSubject <- tbl_df(read.table(tSubjectFile))
colnames(trainActivity) <- c("ActivityID")
colnames(trainSubject) <- c("SubjectID")

trainValues <- tbl_df(read.table(xTrainFile))
trainDS <- cbind(trainSubject,trainActivity,trainValues)

##################################################
## Load Test data set 
##################################################

xTestFile <- file.path(dsFolder,"test","X_test.txt")
yTestFile <- file.path(dsFolder,"test","Y_test.txt")
tstSubjectFile <- file.path(dsFolder,"test","subject_test.txt")

testActivity <- tbl_df(read.table(yTestFile))
testSubject <- tbl_df(read.table(tstSubjectFile))
colnames(testActivity) <- c("ActivityID")
colnames(testSubject) <- c("SubjectID")

testValues <- tbl_df(read.table(xTestFile))
testDS <- cbind(testSubject,testActivity,testValues)

## Merge Test and training  data set 
MergeDS <- tbl_df(rbind(trainDS,testDS))

###########################################################################################
## 
## Step 2 : Extracts measurements on the mean and standard deviation for each measurement
##
###########################################################################################


##################################################
## Load the Features/Variables & Activity Labels 
################################################## 

features <- tbl_df(read.table(featureFile))
activityLabels <- tbl_df(read.table(activityLabelFile))
colnames(activityLabels) <- c("ActivityID","ActivityDescription")

VariableNames <- as.character(features[[2]])

colnames(MergeDS) <- c("SubjectID","ActivityID",VariableNames)

##################################################
## Mean & Std deviation Columns to Select 
##################################################

MeasureColumns <- grep('[Mm]ean|[Ss]td',colnames(MergeDS),value = TRUE)
Column2Select <- c("SubjectID","ActivityID",MeasureColumns)

## Extract the needed Measurements 
SelectiveDS <- MergeDS[,Column2Select]

###########################################################################################
## 
## Step 3 : Uses descriptive activity names to name the activities in the data set
##
###########################################################################################

SelectiveDS<-tbl_df(
  merge(activityLabels,SelectiveDS,by.x="ActivityID",by.y="ActivityID")
)

###########################################################################################
## 
## Step 4 : Appropriately labels the data set with descriptive variable names.
##
###########################################################################################

#remove the special characters (,)
#replace -,"," with underscore for more readable format
colnames(SelectiveDS) <- gsub("\\(\\)","",gsub(",|-","_",colnames(SelectiveDS)))

#get column names and remove Abbreviations
SelectiveDScolnames <- colnames(SelectiveDS)

SelectiveDScolnames <- gsub("^f","frequencyDomain", SelectiveDScolnames)
SelectiveDScolnames <- gsub("^t","timeDomain", SelectiveDScolnames)
SelectiveDScolnames <- gsub("Acc","Accelerometer", SelectiveDScolnames)
SelectiveDScolnames <- gsub("Gyro","Gyroscope", SelectiveDScolnames)
SelectiveDScolnames <- gsub("Mag","Magnitude", SelectiveDScolnames)
SelectiveDScolnames <- gsub("mean","Mean", SelectiveDScolnames)
SelectiveDScolnames <- gsub("std","StandardDeviation", SelectiveDScolnames)

#Assign the Descriptive Names
colnames(SelectiveDS) <- SelectiveDScolnames

###########################################################################################
## 
## Step 5 : creates a second, independent tidy data set with the average of each 
##          variable for each activity and each subject
##
###########################################################################################

#grouped on Subject,Activity and Description
ActivityTrackerDS <- SelectiveDS %>% 
  group_by(SubjectID,ActivityID,ActivityDescription) %>% 
  summarise_each(funs(mean))

#Export tidy data set to file "tidyData_ActivityTracker.txt"
write.table(ActivityTrackerDS, "tidyData_ActivityTracker.txt",row.names=FALSE,quote = FALSE)

#File creation Message 
if(file.exists("tidyData_ActivityTracker.txt")){
  message("Tidy Data File 'tidyData_ActivityTracker.txt' for Activity Tracker created")
}else{
  message("Tidy Data File 'tidyData_ActivityTracker.txt' not created")
}