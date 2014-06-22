#
# Reads the raw data and creates two tidy datasets as per README and CodeBook
#

data_path <- "./UCI HAR Dataset/"

# read the variable names and remove problematic characters ( "(", ")" and "," )
var_names <- read.table(paste(data_path,"features.txt",sep=""), header=FALSE, stringsAsFactors=FALSE)
var_names$V2 <- gsub("[\\(\\)]", "", var_names$V2)
var_names$V2 <- gsub("\\,", "-", var_names$V2)

# read test set
X_test <- read.table(paste(data_path,"test/X_test.txt",sep=""), header=FALSE)
# assign human-readble names to each column
names(X_test) <- var_names$V2
# read the subject id and name the column "subject" insted of "V1"
subject_test <- read.csv(paste(data_path,"test/subject_test.txt",sep=""), header=FALSE)
names(subject_test)=c("subject")
# read the activity values and name the column "activity" insted of "V1"
y_test <- read.csv(paste(data_path,"test/y_test.txt",sep=""), header=FALSE)
names(y_test)=c("activity")
# combine the columns for complete test set
all_test <- cbind(X_test, subject_test, y_test)

# repeat the same steps for the training set
X_train <- read.csv(paste(data_path,"/train/X_train.txt",sep=""), sep="", header=FALSE)
names(X_train) <- var_names$V2
subject_train <- read.csv(paste(data_path,"train/subject_train.txt",sep=""), header=FALSE)
names(subject_train)=c("subject")
y_train <- read.csv(paste(data_path,"train/y_train.txt",sep=""), header=FALSE)
names(y_train)=c("activity")
all_train <- cbind(X_train, subject_train, y_train)

# construct the complete data set with all the variables
all <- rbind(all_test, all_train)

# replace the numeric values for activities with human readable labels using factor
all$activity <- as.factor( all$activity )
levels(all$activity)=c("Walking","WalkingUp","WalkingDown","Sitting","Standing","Laying")

# find the variables (features) to keep: the ones containg mean, Mean or str in their names
columns_to_keep <- grep("[Mm]ean|std", var_names$V2, value=TRUE)
num_features=length(columns_to_keep)
# also keep subject and actility variables
columns_to_keep <- c(columns_to_keep, "subject", "activity")

# final set with just the needed columns
reduced_set <- all[columns_to_keep]

# write the final dataset as text file, to read it back use 
#       rr <- read.table("tidy1.txt", header=TRUE)
write.table(reduced_set, "tidy1.txt", row.names = FALSE, col.names = TRUE, quote = FALSE)

all_means <- aggregate(reduced_set[1:num_features], list(activity=reduced_set$activity, subject=reduced_set$subject), mean)

# Append "AVE-" in the beggining of each variable name except the activity and subject variabes (first two)
current_names <- names(all_means[3:ncol(all_means)])
better_names <- unlist(lapply(current_names, function(l) paste("AVE-",l,sep="")))
names(all_means)[3:ncol(all_means)] <- better_names

# write the averages dataset as text file, to read it back use 
#       rr <- read.table("tidy_means.txt", header=TRUE)
write.table(all_means, "tidy_means.txt", row.names = FALSE, col.names = TRUE, quote = FALSE)

