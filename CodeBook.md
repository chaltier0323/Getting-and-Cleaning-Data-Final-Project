# Code Book
This Code Book document describes the code inside run_analysis.R and data information.

## run_analysis.R 
### 1. Download data
* Download the data source and zip it.
* Check UCI HAR Dataset folder existence.
### 2. Read the data files
* Read the all data files and combine training and test data for subject, x, y.
### 3. Read features
* Read all features from features.txt and filter it to only leave features that are either means ("mean()") or standard deviations ("std()").
* Also, using previous filtering rule to label each column name of features.
### 4. Read activity label
* Read the activity labels from activity_labels.txt and replace the numbers with the text by merge() function.
### 5. Merge columns
* Using cbind() to merge subject, activity, and filtered features.
* Label subject and activity column.
### 6. Write data to file
* Write the new tidy set into a text file called tidy_data.txt.


## data information
Human Activity Recognition Using Smartphones Dataset
Version 1.0
The dataset includes the following files in the folder "UCI HAR Dataset":
* test/X_test.txt: Test set.
* test/y_test.txt: Test labels.
* train/X_train.txt: Training set.
* train/y_train.txt: Training labels.
* activity_labels.txt: Links the class labels with their activity name.
* features.txt: List of all features.
* features_info.txt: Shows information about the variables used on the feature vector.
* README.txt

The following files are available for the train and test data. Their descriptions are equivalent. 
* train/subject_train.txt: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
* train/Inertial Signals/total_acc_x_train.txt: The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
* train/Inertial Signals/body_acc_x_train.txt: The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
* train/Inertial Signals/body_gyro_x_train.txt: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

