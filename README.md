Getting the Cleaning Data - Course Project
========================

### Script Description

This script (run_analysis.R) assumes you have the proper required dataset (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) extracted in your working area. That is, there should be a directory called "UCI HAR Dataset" in your working area.

This script performs the following on the dataset:

1. Reads the input files:

* Names of the 561 features, from the file "UCI HAR Dataset/features.txt".
* Descriptive names of the 6 activity labels, from the file "UCI HAR Dataset/activity_labels.txt".
* Training data, including features (UCI HAR Dataset/train/X_train.txt), label(UCI HAR Dataset/train/y_train.txt), and subject (UCI HAR Dataset/train/subject_train.txt).
* Testing data, including features (UCI HAR Dataset/test/X_test.txt), label(UCI HAR Dataset/test/y_test.txt), and subject (UCI HAR Dataset/test/subject_test.txt). 

