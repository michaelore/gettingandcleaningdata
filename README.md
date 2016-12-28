This project includes the following files:
=========================================

- 'README.md'

- 'CodeBook.md': Describes the meaning of the columns in 'tidy_data/data_average.txt'.

- 'run_analysis.R': This is an R script that tidies the original dataset. It tries to read from the working directory, and write to 'tidy_data/data_average.txt'.

These files are generated:
=========================

- 'tidy_data/data_average.txt': This table can be read with R's read.table command. The rows represent all possible combinations of "subject" and "activity". The columns contain the mean feature value among all experiments with the same subject and activity.

Analysis process
================
1. Read the original data. Only the following files are read:
  * activity_labels.txt
  * features.txt
  * test/subject_test.txt
  * test/X_test.txt
  * test/y_test.txt
  * train/subject_train.txt
  * train/X_train.txt
  * train/y_train.txt
2. All test and train data are merged into one set of tables.
3. All features except those that use mean() and std() are filtered out.
4. Clean up the feature labels in features.txt. The following changes are made:
  * All punctuation is removed.
  * "mean" and "std" are translated into "Mean" and "Std", respectively. This is to make the labels camelCase.
5. The subject and activity data are added as columns to the sensor measurement data. Now all data is in one table.
6. The activity data is converted from numbers (1-6) to the labels listed in 'activity_labels.txt'.
7. A new table is created with means of all measurement columns for each combination of "activity" and "subject".
8. This new table is written to 'tidy_data/data_average.txt'.
