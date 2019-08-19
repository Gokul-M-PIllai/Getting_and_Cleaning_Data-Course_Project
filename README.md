# Corsera's Course Project - Getting & Cleaning Data
One of the most exciting areas in all of data science right now is wearable computing - for example [this article](<http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/>). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users.

The purpose of this project is to work with the data collected from the accelerometers and gyroscope of the wearable device Samsung Galaxy S smartphone and to prepare tidy data that can be used for later analysis.

## Data Set Information:
The Data Set bring used has been obtained from , [Human Activity Recognition database](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

### Study
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured.  

### Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

## Creating Tidy Data Set 
The Repository consist of R script **run_analysis.R** which is used to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.

run_analysis.R does the following-
> 1. Merges the training and the test sets to create one data set.
> 2. Extracts only the measurements on the mean and standard deviation for each measurement.
> 3. Uses descriptive activity names to name the activities in the data set
> 4. Appropriately labels the data set with descriptive variable names.
> 5. creates a second, independent tidy data set with the average of each variable for each activity and each subject.
> 6. Writes the tidy data set to file ***tidyData_ActivityTracker.txt***

The Attached *tidyData_ActivityTracker.txt* is created by running the script on *R version 3.6.0 (2019-04-26)*

## Getting started
### Prerequisites
The R libraries needed for the script
```R
install.packages('dplyr')
```
### Running the Code
Depending the Env. any of the below can be used.

```R
Rscript run_analysis.R
```
```R
source("run_analysis.R")
```

