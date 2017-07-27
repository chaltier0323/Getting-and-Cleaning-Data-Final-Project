# Code Book
This Code Book document describes the code inside run_analysis.R, the variables, and the data source.

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
