Codebook
============

### Features of data

Each row (except the first row) of the output dataset contains one observation. Each observation contains 81 features. The first row contains the feature names. 

The first feature (feature #1) is "Subject", and the second feature (feature #2) is "Activity". Subject ID ranges from 1 to 30. Activity can be one of the following six values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

Subsequent features (feature #3 to #81) contains the average of the original measurement of the corresponding feature label collected from Subject performing the Activity. These features are only a subset of the original raw data. Only measurements with mean() or std() in their names are extracted and preserved, as in this project we do not need the other measurements.

### Unit of data

The measurements are taken from the sensor signals worn on the subject taking the activities. The features are normalized and bounded within[-1,1], therefore does not carry a unit.


### Origin of Raw Data

The origin of the raw data is from [1], which can be downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Additional information about the raw data is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012