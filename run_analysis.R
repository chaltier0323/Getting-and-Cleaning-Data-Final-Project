# You should create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Load train/test data
x_trainingData <- read.table("UCI HAR Dataset/train/X_train.txt")
y_trainingData <- read.table("UCI HAR Dataset/train/y_train.txt")
subject_trainingData <- read.table("UCI HAR Dataset/train/subject_train.txt")

x_testData <- read.table("UCI HAR Dataset/test/X_test.txt")
y_testData <- read.table("UCI HAR Dataset/test/y_test.txt")
subject_testData<- read.table("UCI HAR Dataset/test/subject_test.txt")

## Combine Train and Test
x_Data <- rbind(x_trainingData, x_testData)
y_Data <- rbind(y_trainingData, y_testData)
subject_Data <- rbind(subject_trainingData, subject_testData)

## Read feature
features <- read.table("UCI HAR Dataset/features.txt", header = F, sep = " ")

## Filter by feature name
features_mean_std <- grepl("mean\\(\\)|std\\(\\)",features[,2])
data_extract_x <- x_Data[,features_mean_std]
names(data_extract_x) <- features[features_mean_std,2]

## Read activity label
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header = F, sep = " ")
names(activities) <- c("activityId","activity")

## Merge
names(y_Data) <- "activityId"
y_Data.named <- merge(y_Data, activities, by.x = "activityId", by.y = "activityId")[, 2]

data <- cbind(subject_Data, y_Data.named, data_extract_x)
names(data)[1] <- "subject"
names(data)[2] <- "activity"

write.table(data, "tidy_data.txt", row.names = F)
