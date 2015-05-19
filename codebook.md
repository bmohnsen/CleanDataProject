Variables - data - transformations

This document describes the creation of tidy.txt from original data at:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A description of the original data can be found at:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The data from the following necessary sets were read into the program and assigned the following names.
	subject_train <- subject_train.txt		
	subject_test <- subject_test.txt
	x_train <- X_train.txt
	x_test <- X_test.txt
	y_train <- y_train.txt
	y_test <- y_test.txt
	feature_names <- features.txt
	activity_labels <- activity_labels.txt
From this data three combined files were created.
	subjects from subject_train.txt and subject_test.txt
	activities from y_train and y_test
	features from x_train and x_test
Column names were added to these three files.
	subjects - The title “Subject” was added
	activities - The title “Activity” was added
	features - the names from feature_names was added	
Then the three files were combined into combinedData.
Those columns that contained the terms “mean” or “std” were assigned to columnsMeanSTD.
	Subject and activity columns were added to this and assigned to necessaryColumns.
	combinedData is updated to include only columnsMeanSTD, subject, and activity and assigned to subData.
Descriptive names for activities were added to subData using the activity_labels.
The column names for subData were cleaned up with descriptive names resulting in the following fields:

Subject	
Activity	
TimeBodyAccelerometerMean()-X	
TimeBodyAccelerometerMean()-Y	
TimeBodyAccelerometerMean()-Z	
TimeBodyAccelerometerSTD()-X	
TimeBodyAccelerometerSTD()-Y	
TimeBodyAccelerometerSTD()-Z	
TimeGravityAccelerometerMean()-X	
TimeGravityAccelerometerMean()-Y	
TimeGravityAccelerometerMean()-Z	
TimeGravityAccelerometerSTD()-X	
TimeGravityAccelerometerSTD()-Y	
TimeGravityAccelerometerSTD()-Z	
TimeBodyAccelerometerJerkMean()-X	
TimeBodyAccelerometerJerkMean()-Y	
TimeBodyAccelerometerJerkMean()-Z
TimeBodyAccelerometerJerkSTD()-X	
TimeBodyAccelerometerJerkSTD()-Y	
TimeBodyAccelerometerJerkSTD()-Z	
TimeBodyGyroscopeMean()-X	
TimeBodyGyroscopeMean()-Y	
TimeBodyGyroscopeMean()-Z	
TimeBodyGyroscopeSTD()-X	
TimeBodyGyroscopeSTD()-Y	
TimeBodyGyroscopeSTD()-Z	
TimeBodyGyroscopeJerkMean()-X	
TimeBodyGyroscopeJerkMean()-Y	
TimeBodyGyroscopeJerkMean()-Z	
TimeBodyGyroscopeJerkSTD()-X	
TimeBodyGyroscopeJerkSTD()-Y	
TimeBodyGyroscopeJerkSTD()-Z	
TimeBodyAccelerometerMagnitudeMean()	
TimeBodyAccelerometerMagnitudeSTD()	
TimeGravityAccelerometerMagnitudeMean()	
TimeGravityAccelerometerMagnitudeSTD()	
TimeBodyAccelerometerJerkMagnitudeMean()	
TimeBodyAccelerometerJerkMagnitudeSTD()	
TimeBodyGyroscopeMagnitudeMean()	
TimeBodyGyroscopeMagnitudeSTD()	
TimeBodyGyroscopeJerkMagnitudeMean()	
TimeBodyGyroscopeJerkMagnitudeSTD()	
FrequencyBodyAccelerometerMean()-X	
FrequencyBodyAccelerometerMean()-Y	
FrequencyBodyAccelerometerMean()-Z	
FrequencyBodyAccelerometerSTD()-X	
FrequencyBodyAccelerometerSTD()-Y	
FrequencyBodyAccelerometerSTD()-Z	
FrequencyBodyAccelerometerMeanFreq()-X	
FrequencyBodyAccelerometerMeanFreq()-Y	
FrequencyBodyAccelerometerMeanFreq()-Z	
FrequencyBodyAccelerometerJerkMean()-X	
FrequencyBodyAccelerometerJerkMean()-Y	
FrequencyBodyAccelerometerJerkMean()-Z	
FrequencyBodyAccelerometerJerkSTD()-X	
FrequencyBodyAccelerometerJerkSTD()-Y	
FrequencyBodyAccelerometerJerkSTD()-Z	
FrequencyBodyAccelerometerJerkMeanFreq()-X	
FrequencyBodyAccelerometerJerkMeanFreq()-Y	
FrequencyBodyAccelerometerJerkMeanFreq()-Z	
FrequencyBodyGyroscopeMean()-X	
FrequencyBodyGyroscopeMean()-Y	
FrequencyBodyGyroscopeMean()-Z	
FrequencyBodyGyroscopeSTD()-X	
FrequencyBodyGyroscopeSTD()-Y	
FrequencyBodyGyroscopeSTD()-Z	
FrequencyBodyGyroscopeMeanFreq()-X	
FrequencyBodyGyroscopeMeanFreq()-Y	
FrequencyBodyGyroscopeMeanFreq()-Z	
FrequencyBodyAccelerometerMagnitudeMean()	
FrequencyBodyAccelerometerMagnitudeSTD()	
FrequencyBodyAccelerometerMagnitudeMeanFreq()	
FrequencyBodyAccelerometerJerkMagnitudeMean()	
FrequencyBodyAccelerometerJerkMagnitudeSTD()	
FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()	
FrequencyBodyGyroscopeMagnitudeMean()	
FrequencyBodyGyroscopeMagnitudeSTD()	
FrequencyBodyGyroscopeMagnitudeMeanFreq()	
FrequencyBodyGyroscopeJerkMagnitudeMean()	
FrequencyBodyGyroscopeJerkMagnitudeSTD()	
FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()	
Angle(TimeBodyAccelerometerMean,Gravity)	
Angle(TimeBodyAccelerometerJerkMean),GravityMean)	
Angle(TimeBodyGyroscopeMean,GravityMean)	
Angle(TimeBodyGyroscopeJerkMean,GravityMean)	
Angle(X,GravityMean)	
Angle(Y,GravityMean)	
Angle(Z,GravityMean)
The file created contains all of the fields listed above and is named tidy.txt
