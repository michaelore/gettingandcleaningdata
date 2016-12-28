Setup:
=====

The original data is not included in the repository. You need to either:
* Copy the data into a folder at the root of this repository named 'UCI HAR DataSet/'
* Or, edit the 'data_path' variable set at the top of 'run_analysis.R' to have the path to where you put the data.

Requirements:
============

1. The submitted data set is tidy.
  * Each variable is a column.
  * Each row is an observation.
  * There is only one table, and it has only one meaning.
  * All column names are cleanup up to be camelCase with no punctuation.
2. The Github repo contains the required scripts.
  * I included my script: 'run_analysis.R'. This produces the data I submitted: 'tidy_data/data_average.txt'.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
  * In 'CodeBook.md', an edited exceprt from the original 'feature_info.txt' describes what the original data meant. The variables in 'tidy_data/data_average.txt' are described.
4. The README that explains the analysis files is clear and understandable.
  * The 'Analysis process' at the bottom describes everything 'run_analysis.R' does.

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
