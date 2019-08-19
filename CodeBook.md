# Code Book For Coursera's Course Project - ***Getting & Cleaning Data***

This Code Book defines the Source Data Set used for creating the tidy data set file ***"tidyData_ActivityTracker.txt"***.

## Contents
- [Source Data Set](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#source-data-set)
  - [Data Set Used](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#data-set-used)
  - [Measurement Units](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#measurement-units)
- [Variables](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#variables)
  - [Identifiers](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#identifiers)
  - [Time Domain Variables](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#time-domain-variables)
  - [Frequency Domain Variables](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#frequency-domain-variables)
- [Transformations](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#transformations)
  - [Code Output](https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#code-output)

## Source Data Set
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years . Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 

> - The acceleration signal was separated into body motion and gravity acceleration signals.
> - The body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
> - The magnitude of these threedimensional signals were calculated using the Euclidean normalization.
>
>> These Measures are further broken down as
>> - Triaxial ( denoted by suffix _X ,_Y and _Z ) acceleration from the accelerometer 
>> - Triaxial ( denoted by suffix _X ,_Y and _Z ) Angular velocity from the gyroscope. 

### Data Set used
[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


### Measurement Units

- The acceleration signal from the smartphone accelerometer is measured in standard gravity units 'g'
- The angular velocity vector measured by the gyroscope for each window sample is measured in the units are radians/second. 

## Variables

This Section indicate all the variables and summaries calculated in the tidy data set created.

### Identifiers

> 1. SubjectID : An Integer ID indicating the subject who performed the activity for each window sample. Its range is from 1 to 30
> 2. ActivityID : An Integer ID indicating the activities
> 3. ActivityDescription : 
>> - WALKING
>> - WALKING_UPSTAIRS
>> - WALKING_DOWNSTAIRS
>> - SITTING
>> - STANDING
>> - LAYING

### Time Domain Variables
These time domain signals (prefix 'time' ) were captured at a constant rate of 50 Hz and for each triaxial measures (128 readings/window) the Mean and Standard deviation has been calculated.

#### Time Domain Variables : Body Accelerometer
 - Average
> 4. timeDomainBodyAccelerometer_Mean_X
> 5. timeDomainBodyAccelerometer_Mean_Y
> 6. timeDomainBodyAccelerometer_Mean_Z
- Standard Deviation
> 7. timeDomainBodyAccelerometer_StandardDeviation_X
> 8. timeDomainBodyAccelerometer_StandardDeviation_Y
> 9. timeDomainBodyAccelerometer_StandardDeviation_Z

#### Time Domain Variables : Gravity Accelerometer
- Average
> 10. timeDomainGravityAccelerometer_Mean_X
> 11. timeDomainGravityAccelerometer_Mean_Y
> 12. timeDomainGravityAccelerometer_Mean_Z
- Standard Deviation
> 13. timeDomainGravityAccelerometer_StandardDeviation_X
> 14. timeDomainGravityAccelerometer_StandardDeviation_Y
> 15. timeDomainGravityAccelerometer_StandardDeviation_Z

#### Time Domain Variables : Body Accelerometer Jerk
- Average
> 16. timeDomainBodyAccelerometerJerk_Mean_X
> 17. timeDomainBodyAccelerometerJerk_Mean_Y
> 18. timeDomainBodyAccelerometerJerk_Mean_Z
- Standard Deviation
> 19. timeDomainBodyAccelerometerJerk_StandardDeviation_X
> 20. timeDomainBodyAccelerometerJerk_StandardDeviation_Y
> 21. timeDomainBodyAccelerometerJerk_StandardDeviation_Z

#### Time Domain Variables : Body Gyroscope
- Average
> 22. timeDomainBodyGyroscope_Mean_X
> 23. timeDomainBodyGyroscope_Mean_Y
> 24. timeDomainBodyGyroscope_Mean_Z
- Standard Deviation
> 25. timeDomainBodyGyroscope_StandardDeviation_X
> 26. timeDomainBodyGyroscope_StandardDeviation_Y
> 27. timeDomainBodyGyroscope_StandardDeviation_Z

#### Time Domain Variables : Body Gyroscope Jerk
- Average
> 28. timeDomainBodyGyroscopeJerk_Mean_X
> 29. timeDomainBodyGyroscopeJerk_Mean_Y
> 30. timeDomainBodyGyroscopeJerk_Mean_Z
- Standard Deviation
> 31. timeDomainBodyGyroscopeJerk_StandardDeviation_X
> 32. timeDomainBodyGyroscopeJerk_StandardDeviation_Y
> 33. timeDomainBodyGyroscopeJerk_StandardDeviation_Z

#### Time Domain Variables : Body Accelerometer Magnitude
- Average
> 34. timeDomainBodyAccelerometerMagnitude_Mean
- Standard Deviation
> 35. timeDomainBodyAccelerometerMagnitude_StandardDeviation

#### Time Domain Variables : Gravity Accelerometer Magnitude
- Average
> 36. timeDomainGravityAccelerometerMagnitude_Mean
- Standard Deviation
> 37. timeDomainGravityAccelerometerMagnitude_StandardDeviation

#### Time Domain Variables : Body Accelerometer Jerk Magnitude
- Average
> 38. timeDomainBodyAccelerometerJerkMagnitude_Mean
- Standard Deviation
> 39. timeDomainBodyAccelerometerJerkMagnitude_StandardDeviation

#### Time Domain Variables : Body Gyroscope Magnitude
- Average
> 40. timeDomainBodyGyroscopeMagnitude_Mean
- Standard Deviation
> 41. timeDomainBodyGyroscopeMagnitude_StandardDeviation

#### Time Domain Variables : Body Gyroscope Jerk Magnitude
- Average
> 42. timeDomainBodyGyroscopeJerkMagnitude_Mean
- Standard Deviation
> 43. timeDomainBodyGyroscopeJerkMagnitude_StandardDeviation

### Frequency Domain Variables

#### Frequency Domain Variables : Body Accelerometer
- Average
> 44. frequencyDomainBodyAccelerometer_Mean_X
> 45. frequencyDomainBodyAccelerometer_Mean_Y
> 46. frequencyDomainBodyAccelerometer_Mean_Z
- Standard Deviation
> 47. frequencyDomainBodyAccelerometer_StandardDeviation_X
> 48. frequencyDomainBodyAccelerometer_StandardDeviation_Y
> 49. frequencyDomainBodyAccelerometer_StandardDeviation_Z
- Average Frequency
> 50. frequencyDomainBodyAccelerometer_MeanFrequency_X
> 51. frequencyDomainBodyAccelerometer_MeanFrequency_Y
> 52. frequencyDomainBodyAccelerometer_MeanFrequency_Z

#### Frequency Domain Variables : Body Accelerometer Jerk
- Average
> 53. frequencyDomainBodyAccelerometerJerk_Mean_X
> 54. frequencyDomainBodyAccelerometerJerk_Mean_Y
> 55. frequencyDomainBodyAccelerometerJerk_Mean_Z
- Standard Deviation
> 56. frequencyDomainBodyAccelerometerJerk_StandardDeviation_X
> 57. frequencyDomainBodyAccelerometerJerk_StandardDeviation_Y
> 58. frequencyDomainBodyAccelerometerJerk_StandardDeviation_Z
- Average Frequency
> 59. frequencyDomainBodyAccelerometerJerk_MeanFrequency_X
> 60. frequencyDomainBodyAccelerometerJerk_MeanFrequency_Y
> 61. frequencyDomainBodyAccelerometerJerk_MeanFrequency_Z

#### Frequency Domain Variables : Body Gyroscope Jerk
- Average
> 62. frequencyDomainBodyGyroscope_Mean_X
> 63. frequencyDomainBodyGyroscope_Mean_Y
> 64. frequencyDomainBodyGyroscope_Mean_Z
- Standard Deviation
> 65. frequencyDomainBodyGyroscope_StandardDeviation_X
> 66. frequencyDomainBodyGyroscope_StandardDeviation_Y
> 67. frequencyDomainBodyGyroscope_StandardDeviation_Z
- Average Frequency
> 68. frequencyDomainBodyGyroscope_MeanFrequency_X
> 69. frequencyDomainBodyGyroscope_MeanFrequency_Y
> 70. frequencyDomainBodyGyroscope_MeanFrequency_Z

#### Frequency Domain Variables : Body Accelerometer Magnitude
- Average
> 71. frequencyDomainBodyAccelerometerMagnitude_Mean
- Standard Deviation
> 72. frequencyDomainBodyAccelerometerMagnitude_StandardDeviation
- Average Frequency
> 73. frequencyDomainBodyAccelerometerMagnitude_MeanFreq

#### Frequency Domain Variables : Body Accelerometer Jerk Magnitude
- Average
> 74. frequencyDomainBodyAccelerometerJerkMagnitude_Mean
- Standard Deviation
> 75. frequencyDomainBodyAccelerometerJerkMagnitude_StandardDeviation
- Average Frequency
> 76. frequencyDomainBodyAccelerometerJerkMagnitude_MeanFreq

#### Frequency Domain Variables : Body Gyroscope Magnitude
- Average
> 77. frequencyDomainBodyGyroscopeMagnitude_Mean
- Standard Deviation
> 78. frequencyDomainBodyGyroscopeMagnitude_StandardDeviation
- Average Frequency
> 79. frequencyDomainBodyGyroscopeMagnitude_MeanFreq

#### Frequency Domain Variables : Body Gyroscope Jerk Magnitude
- Average
> 80. frequencyDomainBodyGyroscopeJerkMagnitude_Mean
- Standard Deviation
> 81. frequencyDomainBodyGyroscopeJerkMagnitude_StandardDeviation
- Average Frequency
> 82. frequencyDomainBodyGyroscopeJerkMagnitude_MeanFreq

## Transformations

1.  The training and the test sets were merged to create one data set ***MergeDS***.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.
  > 1.  The measures were selected by ***grep('mean|std',colnames(MergeDS)***
  > 2.  Seperate Data set created ***SelectiveDS***
3.  The Activity ID were associated to (Activity Description)[https://github.com/Gokul-M-PIllai/Getting_and_Cleaning_Data-Course_Project/new/master#time-domain-variables] in the data set ***SelectiveDS***
4.  Appropriately labeling the data set with descriptive variable names
  > 1.  The special characters ***(*** and ***)***  were removed.
  > 2.  The special characters **-** and **,**  were replaced with underscore '***_***'
  > 3.  The variable starting with ***f*** were replaced with ***frequencyDomain***
  > 4.  The variable starting with ***t*** were replaced with ***timeDomain***
  > 5.  The Abbreviation (***Acc,Gyro,Mag,mean,Freq,std***) were replaced with (***Accelerometer,Gyroscope,Magnitude,Mean,Frequency,StandardDeviation***) respectively.
  > 6.  Replaced the consecutive occurence of *Body* like ***"BodyBody"*** in Variable Name e.g. *fBodyBodyGyroJerkMag-mean()* with single occurence *fBodyGyroJerkMag-mean()*.
5. Independent tidy data set with the average of each variable for each activity and each subject created ***ActivityTrackerDS***.

### Code Output
```
tidyData_ActivityTracker.txt
```
