#Introduction
The script '''run_analysis.r''' does the follow:
*Combines a test sets and

#Series
1. Set the working directory to the current directory on the computer hosting the files.
2. Load the subject data, both train and test sets. Combine the two sets into one '''subject'''' data set.
3. Load the '''activity_labels''' and rename the variable labels.
4. Load the '''y''' data, both train and test sets. Combine the two sets into one '''y''' data set. Add '''Activity''' to the variable name.
5. Load the '''features''' data set.
6. Load the '''x''' data, both train and test sets. Combine the two sets into one '''x''' data set.
7. Assign the '''features''' data to the variable names of the '''x''' data set.
8. Identify all variables with '''mean''' and '''std''' and cut out others.
9. Combine '''x''', '''subject''', and '''y''' data to one data frame. Merge '''Activity''' data names to the table.
10. Aggregate the data average of each variable for each activity and each subject. Write the '''tidy''' data to a file '''tidy.txt'''.
