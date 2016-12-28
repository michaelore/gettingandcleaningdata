library(dplyr)

data_path <- "UCI\ HAR\ DataSet/"

# Read all data files we'll use
activity_labels <- read.table(paste0(data_path, "activity_labels.txt"))
features <- read.table(paste0(data_path, "features.txt"))

subject_test <- read.table(paste0(data_path, "test/subject_test.txt"))
x_test <- read.table(paste0(data_path, "test/X_test.txt"))
y_test <- read.table(paste0(data_path, "test/y_test.txt"))

subject_train <- read.table(paste0(data_path, "train/subject_train.txt"))
x_train <- read.table(paste0(data_path, "train/X_train.txt"))
y_train <- read.table(paste0(data_path, "train/y_train.txt"))

# Merge training and test data
subject <- rbind(subject_test, subject_train)
x <- rbind(x_test, x_train)
y <- rbind(y_test, y_train)

# Label sensor data columns with cleaned up labels from features.txt
clean_features <- gsub("[[:punct:]]", "", features[,2])
clean_features <- gsub("mean", "Mean", clean_features)
clean_features <- gsub("std", "Std", clean_features)
x <- setNames(x, clean_features)

# Select only mean and standard deviation features
x <- x[grepl("mean\\(\\)|std\\(\\)", features[,2])]

# Add subject and activity columns
subject <- setNames(subject, c("subject"))
y <- setNames(y, "activity")
data <- cbind(c(subject, y), x)

# Use dplyr tbl
data <- tbl_df(data)

# Label the activities with activity_labels.txt
data <- mutate(data, activity = activity_labels[activity,2])

# Get the mean of each sensor data column, grouped by subject and activity
data_average <- data %>%
  group_by(subject, activity) %>%
  summarize_(.dots = paste0("mean(",names(data)[-(1:2)],")"))

# Write the data to new files
#write.table(data, "tidy_data/data.txt", row.names = FALSE)
write.table(data_average, "tidy_data/data_average.txt", row.names = FALSE)
