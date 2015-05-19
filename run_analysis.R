## Install needed libraries
library(dplyr)
library(data.table)

## Step 1: Read and combine training and test sets to create one data set with column names.

## read data
subject_train <- read.table("UCIHAR/train/subject_train.txt")
subject_test <- read.table("UCIHAR/test/subject_test.txt")
x_train <- read.table("UCIHAR/train/X_train.txt")
x_test <- read.table("UCIHAR/test/X_test.txt")
y_train <- read.table("UCIHAR/train/y_train.txt")
y_test <- read.table("UCIHAR/test/y_test.txt")
activity_labels <- read.table("UCIHAR/activity_labels.txt")
feature_names <- read.table("UCIHAR/features.txt")

## combine files 
subjects <- rbind(subject_train, subject_test)
activities <- rbind(y_train, y_test)
features <- rbind(x_train, x_test)

## add column names after transpose featureNames
colnames(features) <- t(feature_names[2])
colnames(activities) <- "Activity"
colnames(subjects) <- "Subject"

## combine all
combinedData <- cbind(features,activities,subjects)

## Step 2: Extract mean and standard deviation for each measurement

columnsMeanSTD <- grep(".*Mean.*|.*Std.*", names(combinedData), ignore.case=TRUE)
necessaryColumns <- c(columnsMeanSTD, 562, 563)
subData <- combinedData[,necessaryColumns]

## Step 3: Use descriptive names for activities

subData$Activity <- as.character(combinedData$Activity)
for (i in 1:6){
     subData$Activity[subData$Activity == i] <- as.character(activity_labels[i,2])
}
subData$Activity <- as.factor(subData$Activity)

## Step 4: Label data set with descriptive names

names(subData)<-gsub("Acc", "Accelerometer", names(subData))
names(subData)<-gsub("Gyro", "Gyroscope", names(subData))
names(subData)<-gsub("BodyBody", "Body", names(subData))
names(subData)<-gsub("Mag", "Magnitude", names(subData))
names(subData)<-gsub("^t", "Time", names(subData))
names(subData)<-gsub("^f", "Frequency", names(subData))
names(subData)<-gsub("tBody", "TimeBody", names(subData))
names(subData)<-gsub("-mean()", "Mean", names(subData), ignore.case = TRUE)
names(subData)<-gsub("-std()", "STD", names(subData), ignore.case = TRUE)
names(subData)<-gsub("-freq()", "Frequency", names(subData), ignore.case = TRUE)
names(subData)<-gsub("angle", "Angle", names(subData))
names(subData)<-gsub("gravity", "Gravity", names(subData))

## Step 5: Create a second tidy set

subData$Subject <- as.factor(subData$Subject)
subData <- data.table(subData)

tidy_Data <- aggregate(. ~Subject + Activity, subData, mean)

tidy_Data <- tidy_Data[order(tidy_Data$Subject,tidy_Data$Activity),]

## write tidy data set to a file
write.table(tidy_Data, file = "tidy.txt", row.names=FALSE)