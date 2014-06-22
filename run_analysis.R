# Read features and activity labels
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")["V2"]

# Get index for mean/stdev features
index <- grep("mean()|std()", features$V2)

# Read training data
X_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
names(X_train) <- features$V2
names(y_train) <- "activity"
names(subject_train) <- "subject"

# Combine into one training data set
train_dataset <- cbind(subset(X_train, select=index), y_train, subject_train)

# Read testing data
X_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
names(X_test) <- features$V2
names(y_test) <- "activity"
names(subject_test) <- "subject"

# Combine into one testing data set
test_dataset <- cbind(subset(X_test, select=index), y_test, subject_test)

# Merge training and testing data
merged_dataset <- rbind(train_dataset, test_dataset)

# Create second tiny data set
column <- ncol(merged_dataset) - 2
tidy_dataset <- aggregate(merged_dataset[,1:column],list(Subject=merged_dataset$subject, Activity=merged_dataset$activity), mean)
tidy_dataset <- tidy_dataset[order(tidy_dataset$Subject),]

# Update activities with descriptive names
tidy_dataset$Activity <- activity_labels[tidy_dataset$Activity,]

# Write out tidy dataset
write.table(tidy_dataset, file="./tidy_data.txt", row.names=FALSE)