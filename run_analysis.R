# read the variable names and remove problematic characters ( "(", ")" and "," )
var_names <- read.table("./features.txt", header=FALSE, stringsAsFactors=FALSE)
var_names$V2 <- gsub("[\\(\\)]", "", var_names$V2)
var_names$V2 <- gsub("\\,", "-", var_names$V2)

# read test set
X_test <- read.table("./test/X_test.txt", header=FALSE)
# assign human-readble names to each column
names(X_test) <- var_names$V2
# read the subject id and name the column "subject" insted of "V1"
subject_test <- read.csv("./test/subject_test.txt", header=FALSE)
names(subject_test)=c("subject")
# read the activity values and name the column "activity" insted of "V1"
y_test <- read.csv("./test/y_test.txt", header=FALSE)
names(y_test)=c("activity")
# combine the columns for complete test set
all_test <- cbind(X_test, subject_test, y_test)

# repeat the same steps for the training set
X_train <- read.csv("./train/X_train.txt", sep="", header=FALSE)
names(X_train) <- var_names$V2
subject_train <- read.csv("./train/subject_train.txt", header=FALSE)
names(subject_train)=c("subject")
y_train <- read.csv("./train/y_train.txt", header=FALSE)
names(y_train)=c("activity")
all_train <- cbind(X_train, subject_train, y_train)

# construct the complete data set with all the variables
all <- rbind(all_test, all_train)

# replace the numeric values for activities with human readable labels using factor
all$activity <- as.factor( all$activity )
levels(all$activity)=c("Walking","WalkingUp","WalkingDown","Sitting","Standing","Laying")

# find the variables (features) to keep: the ones containg mean, Mean or str in their names
columns_to_keep <- grep("[Mm]ean|std", var_names$V2, value=TRUE)
columns_to_keep <- c(columns_to_keep, "subject", "activity")

# final set with just the needed columns
reduced_set <- all[columns_to_keep]

# write the final dataset as text file, to read it back use 
#       rr <- read.table("./tidy1.txt", header=TRUE)
write.table(reduced_set, "tidy1.txt", row.names = FALSE, col.names = TRUE, quote = FALSE)

