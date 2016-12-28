Background
==========

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAccXYZ
- tGravityAccXYZ
- tBodyAccJerkXYZ
- tBodyGyroXYZ
- tBodyGyroJerkXYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAccXYZ
- fBodyAccJerkXYZ
- fBodyGyroXYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

- Mean: Mean value
- Std: Standard deviation

For example, the mean of tBodyAcc for X is in the variable "tBodyAccMeanX"

tidy_data/data_average.txt
==========================

This is a list of all variables included in 'tidy_data/data_average.txt'. There exists one row for each combination of 'subject' and 'activity'. The remaining variables are averages for all rows in the original data with that subject/activity combination.

* subject
  * This is a label for the person performing the experiment. It's an integer ranging from 1-30.
* activity
  * This is a label for the activity being performed. The possible values are:
    * WALKING
    * WALKING_UPSTAIRS
    * WALKING_DOWNSTAIRS
    * SITTING
    * STANDING
    * LAYING

The remaining variables are means across each subject/activity combination. The meaning of the variable being averaged is as described in the 'Background' section above.
* mean(tBodyAccMeanX)
* mean(tBodyAccMeanY)
* mean(tBodyAccMeanZ)
* mean(tBodyAccStdX)
* mean(tBodyAccStdY)
* mean(tBodyAccStdZ)
* mean(tGravityAccMeanX)
* mean(tGravityAccMeanY)
* mean(tGravityAccMeanZ)
* mean(tGravityAccStdX)
* mean(tGravityAccStdY)
* mean(tGravityAccStdZ)
* mean(tBodyAccJerkMeanX)
* mean(tBodyAccJerkMeanY)
* mean(tBodyAccJerkMeanZ)
* mean(tBodyAccJerkStdX)
* mean(tBodyAccJerkStdY)
* mean(tBodyAccJerkStdZ)
* mean(tBodyGyroMeanX)
* mean(tBodyGyroMeanY)
* mean(tBodyGyroMeanZ)
* mean(tBodyGyroStdX)
* mean(tBodyGyroStdY)
* mean(tBodyGyroStdZ)
* mean(tBodyGyroJerkMeanX)
* mean(tBodyGyroJerkMeanY)
* mean(tBodyGyroJerkMeanZ)
* mean(tBodyGyroJerkStdX)
* mean(tBodyGyroJerkStdY)
* mean(tBodyGyroJerkStdZ)
* mean(tBodyAccMagMean)
* mean(tBodyAccMagStd)
* mean(tGravityAccMagMean)
* mean(tGravityAccMagStd)
* mean(tBodyAccJerkMagMean)
* mean(tBodyAccJerkMagStd)
* mean(tBodyGyroMagMean)
* mean(tBodyGyroMagStd)
* mean(tBodyGyroJerkMagMean)
* mean(tBodyGyroJerkMagStd)
* mean(fBodyAccMeanX)
* mean(fBodyAccMeanY)
* mean(fBodyAccMeanZ)
* mean(fBodyAccStdX)
* mean(fBodyAccStdY)
* mean(fBodyAccStdZ)
* mean(fBodyAccJerkMeanX)
* mean(fBodyAccJerkMeanY)
* mean(fBodyAccJerkMeanZ)
* mean(fBodyAccJerkStdX)
* mean(fBodyAccJerkStdY)
* mean(fBodyAccJerkStdZ)
* mean(fBodyGyroMeanX)
* mean(fBodyGyroMeanY)
* mean(fBodyGyroMeanZ)
* mean(fBodyGyroStdX)
* mean(fBodyGyroStdY)
* mean(fBodyGyroStdZ)
* mean(fBodyAccMagMean)
* mean(fBodyAccMagStd)
* mean(fBodyBodyAccJerkMagMean)
* mean(fBodyBodyAccJerkMagStd)
* mean(fBodyBodyGyroMagMean)
* mean(fBodyBodyGyroMagStd)
* mean(fBodyBodyGyroJerkMagMean)
* mean(fBodyBodyGyroJerkMagStd)
