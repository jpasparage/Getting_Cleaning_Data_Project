#Introduction
Per the instructions of the project, the script 'run_analysis.r' does the followng:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Steps
1. Set the working directory to the current directory on the computer hosting the files.
2. Load the subject data, both train and test sets. Combine the two sets into one 'subject'' data set.
3. Load the 'activity_labels' and rename the variable labels.
4. Load the 'y' data, both train and test sets. Combine the two sets into one 'y' data set. Add 'Activity' to the variable name.
5. Load the 'features' data set.
6. Load the 'x' data, both train and test sets. Combine the two sets into one 'x' data set.
7. Assign the 'features' data to the variable names of the 'x' data set.
8. Identify all variables with 'mean' and 'std' and cut out others.
9. Combine 'x', 'subject', and 'y' data to one data frame. Merge 'Activity' data names to the table.
10. Aggregate the data average of each variable for each activity and each subject. Write the 'tidy' data to a file 'tidy.txt'.

#Data
