Getting the Cleaning Data - Course Project
========================

### Script Description

This script (run_analysis.R) assumes you have the proper required dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) extracted in your working area. That is, there should be a directory called "UCI HAR Dataset" in your working area.

This script first reads the input files:

* Names of the 561 features, from the file "UCI HAR Dataset/features.txt".
* Descriptive names of the 6 activity labels, from the file "UCI HAR Dataset/activity_labels.txt".
* Training data, including features (UCI HAR Dataset/train/X_train.txt), label(UCI HAR Dataset/train/y_train.txt), and subject (UCI HAR Dataset/train/subject_train.txt).
* Testing data, including features (UCI HAR Dataset/test/X_test.txt), label(UCI HAR Dataset/test/y_test.txt), and subject (UCI HAR Dataset/test/subject_test.txt). 

Then, it performs the following tasks on the datasets:
1. Appropriately labels the data set with descriptive variable names. 
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement.
4. Uses descriptive activity names to name the activities in the data set.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
