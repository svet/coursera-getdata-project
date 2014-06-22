# Tidy UCI HAR Dataset Codebook

Tidy dataset containing variables with means and standart deviations, Subject IDs and Activity labels 
proceeding from the original data set published at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

## tidy1.txt Data File

Data file ``tidy1.txt`` contains the complete data set (10299 observations) of 88 variables. 

**Time domain variables (columns 1-40)**

    tBodyAcc-mean-X 	Float
    tBodyAcc-mean-Y 	Float
    tBodyAcc-mean-Z 	Float
    tBodyAcc-std-X 	Float
    tBodyAcc-std-Y 	Float
    tBodyAcc-std-Z 	Float
    tGravityAcc-mean-X 	Float
    tGravityAcc-mean-Y 	Float 
    tGravityAcc-mean-Z 	Float
    tGravityAcc-std-X 	Float
    tGravityAcc-std-Y 	Float
    tGravityAcc-std-Z 	Float
    tBodyAccJerk-mean-X Float
    tBodyAccJerk-mean-Y Float
    tBodyAccJerk-mean-Z Float
    tBodyAccJerk-std-X 	Float
    tBodyAccJerk-std-Y 	Float
    tBodyAccJerk-std-Z 	Float
    tBodyGyro-mean-X 	Float
    tBodyGyro-mean-Y 	Float
    tBodyGyro-mean-Z 	Float
    tBodyGyro-std-X 	Float
    tBodyGyro-std-Y 	Float
    tBodyGyro-std-Z 	Float
    tBodyGyroJerk-mean-X Float
    tBodyGyroJerk-mean-Y Float
    tBodyGyroJerk-mean-Z Float
    tBodyGyroJerk-std-X Float
    tBodyGyroJerk-std-Y Float
    tBodyGyroJerk-std-Z Float
    tBodyAccMag-mean 	Float
    tBodyAccMag-std 	Float
    tGravityAccMag-mean Float
    tGravityAccMag-std 	Float
    tBodyAccJerkMag-mean Float
    tBodyAccJerkMag-std Float
    tBodyGyroMag-mean 	Float
    tBodyGyroMag-std 	Float
    tBodyGyroJerkMag-mean Float
    tBodyGyroJerkMag-std Float

**Frequency domain variables (columns 41-79)**

    fBodyAcc-mean-X 	Float
    fBodyAcc-mean-Y 	Float
    fBodyAcc-mean-Z 	Float
    fBodyAcc-std-X 		Float
    fBodyAcc-std-Y 		Float
    fBodyAcc-std-Z 		Float
    fBodyAcc-meanFreq-X 	Float
    fBodyAcc-meanFreq-Y 	Float
    fBodyAcc-meanFreq-Z 	Float
    fBodyAccJerk-mean-X 	Float
    fBodyAccJerk-mean-Y 	Float
    fBodyAccJerk-mean-Z 	Float
    fBodyAccJerk-std-X 	Float
    fBodyAccJerk-std-Y 	Float
    fBodyAccJerk-std-Z 	Float
    fBodyAccJerk-meanFreq-X 	Float
    fBodyAccJerk-meanFreq-Y 	Float
    fBodyAccJerk-meanFreq-Z 	Float
    fBodyGyro-mean-X 	Float
    fBodyGyro-mean-Y 	Float
    fBodyGyro-mean-Z 	Float
    fBodyGyro-std-X 	Float
    fBodyGyro-std-Y 	Float
    fBodyGyro-std-Z 	Float
    fBodyGyro-meanFreq-X 	Float
    fBodyGyro-meanFreq-Y 	Float
    fBodyGyro-meanFreq-Z 	Float
    fBodyAccMag-mean 	Float
    fBodyAccMag-std 	Float
    fBodyAccMag-meanFreq 	Float
    fBodyBodyAccJerkMag-mean 	Float
    fBodyBodyAccJerkMag-std 	Float
    fBodyBodyAccJerkMag-meanFreq 	Float
    fBodyBodyGyroMag-mean 	Float
    fBodyBodyGyroMag-std 	Float
    fBodyBodyGyroMag-meanFreq 	Float
    fBodyBodyGyroJerkMag-mean 	Float
    fBodyBodyGyroJerkMag-std 	Float
    fBodyBodyGyroJerkMag-meanFreq 	Float
    
**Angle-related variables (columns 80-86)**

    angletBodyAccMean-gravity		Float
    angletBodyAccJerkMean-gravityMean 	Float
    angletBodyGyroMean-gravityMean	Float
    angletBodyGyroJerkMean-gravityMean 	Float
    angleX-gravityMean 	Float
    angleY-gravityMean 	Float
    angleZ-gravityMean 	Float
	
**Identification variables (columns 87-88)**	

    subject Integer
            Subject ID
    activity String
            Activity Label


## tidy_means.txt Data File

Data file ``tidy_means.txt`` contains the mean value for each variable of the ``tidy1.txt`` dataset for 
each subject and activity:

	 Activity String
		Activity Label
	 Subject Int
		Subject ID
	 AVE-tBodyAcc-mean-X Float 
		Average value of all observations of tBodyAcc-mean-X variable
	 AVE-tBodyAcc-mean-Y Float 
		Average value of all observations of tBodyAcc-mean-Y variable
	 AVE-tBodyAcc-mean-Z Float 
		Average value of all observations of tBodyAcc-mean-Z variable
	 AVE-tBodyAcc-std-X Float 
		Average value of all observations of tBodyAcc-std-X variable
	 AVE-tBodyAcc-std-Y Float 
		Average value of all observations of tBodyAcc-std-Y variable
	 AVE-tBodyAcc-std-Z Float 
		Average value of all observations of tBodyAcc-std-Z variable
	 AVE-tGravityAcc-mean-X Float 
		Average value of all observations of tGravityAcc-mean-X variable
	 AVE-tGravityAcc-mean-Y Float 
		Average value of all observations of tGravityAcc-mean-Y variable
	 AVE-tGravityAcc-mean-Z Float 
		Average value of all observations of tGravityAcc-mean-Z variable
	 AVE-tGravityAcc-std-X Float 
		Average value of all observations of tGravityAcc-std-X variable
	 AVE-tGravityAcc-std-Y Float 
		Average value of all observations of tGravityAcc-std-Y variable
	 AVE-tGravityAcc-std-Z Float 
		Average value of all observations of tGravityAcc-std-Z variable
	 AVE-tBodyAccJerk-mean-X Float 
		Average value of all observations of tBodyAccJerk-mean-X variable
	 AVE-tBodyAccJerk-mean-Y Float 
		Average value of all observations of tBodyAccJerk-mean-Y variable
	 AVE-tBodyAccJerk-mean-Z Float 
		Average value of all observations of tBodyAccJerk-mean-Z variable
	 AVE-tBodyAccJerk-std-X Float 
		Average value of all observations of tBodyAccJerk-std-X variable
	 AVE-tBodyAccJerk-std-Y Float 
		Average value of all observations of tBodyAccJerk-std-Y variable
	 AVE-tBodyAccJerk-std-Z Float 
		Average value of all observations of tBodyAccJerk-std-Z variable
	 AVE-tBodyGyro-mean-X Float 
		Average value of all observations of tBodyGyro-mean-X variable
	 AVE-tBodyGyro-mean-Y Float 
		Average value of all observations of tBodyGyro-mean-Y variable
	 AVE-tBodyGyro-mean-Z Float 
		Average value of all observations of tBodyGyro-mean-Z variable
	 AVE-tBodyGyro-std-X Float 
		Average value of all observations of tBodyGyro-std-X variable
	 AVE-tBodyGyro-std-Y Float 
		Average value of all observations of tBodyGyro-std-Y variable
	 AVE-tBodyGyro-std-Z Float 
		Average value of all observations of tBodyGyro-std-Z variable
	 AVE-tBodyGyroJerk-mean-X Float 
		Average value of all observations of tBodyGyroJerk-mean-X variable
	 AVE-tBodyGyroJerk-mean-Y Float 
		Average value of all observations of tBodyGyroJerk-mean-Y variable
	 AVE-tBodyGyroJerk-mean-Z Float 
		Average value of all observations of tBodyGyroJerk-mean-Z variable
	 AVE-tBodyGyroJerk-std-X Float 
		Average value of all observations of tBodyGyroJerk-std-X variable
	 AVE-tBodyGyroJerk-std-Y Float 
		Average value of all observations of tBodyGyroJerk-std-Y variable
	 AVE-tBodyGyroJerk-std-Z Float 
		Average value of all observations of tBodyGyroJerk-std-Z variable
	 AVE-tBodyAccMag-mean Float 
		Average value of all observations of tBodyAccMag-mean variable
	 AVE-tBodyAccMag-std Float 
		Average value of all observations of tBodyAccMag-std variable
	 AVE-tGravityAccMag-mean Float 
		Average value of all observations of tGravityAccMag-mean variable
	 AVE-tGravityAccMag-std Float 
		Average value of all observations of tGravityAccMag-std variable
	 AVE-tBodyAccJerkMag-mean Float 
		Average value of all observations of tBodyAccJerkMag-mean variable
	 AVE-tBodyAccJerkMag-std Float 
		Average value of all observations of tBodyAccJerkMag-std variable
	 AVE-tBodyGyroMag-mean Float 
		Average value of all observations of tBodyGyroMag-mean variable
	 AVE-tBodyGyroMag-std Float 
		Average value of all observations of tBodyGyroMag-std variable
	 AVE-tBodyGyroJerkMag-mean Float 
		Average value of all observations of tBodyGyroJerkMag-mean variable
	 AVE-tBodyGyroJerkMag-std Float 
		Average value of all observations of tBodyGyroJerkMag-std variable
	 AVE-fBodyAcc-mean-X Float 
		Average value of all observations of fBodyAcc-mean-X variable
	 AVE-fBodyAcc-mean-Y Float 
		Average value of all observations of fBodyAcc-mean-Y variable
	 AVE-fBodyAcc-mean-Z Float 
		Average value of all observations of fBodyAcc-mean-Z variable
	 AVE-fBodyAcc-std-X Float 
		Average value of all observations of fBodyAcc-std-X variable
	 AVE-fBodyAcc-std-Y Float 
		Average value of all observations of fBodyAcc-std-Y variable
	 AVE-fBodyAcc-std-Z Float 
		Average value of all observations of fBodyAcc-std-Z variable
	 AVE-fBodyAcc-meanFreq-X Float 
		Average value of all observations of fBodyAcc-meanFreq-X variable
	 AVE-fBodyAcc-meanFreq-Y Float 
		Average value of all observations of fBodyAcc-meanFreq-Y variable
	 AVE-fBodyAcc-meanFreq-Z Float 
		Average value of all observations of fBodyAcc-meanFreq-Z variable
	 AVE-fBodyAccJerk-mean-X Float 
		Average value of all observations of fBodyAccJerk-mean-X variable
	 AVE-fBodyAccJerk-mean-Y Float 
		Average value of all observations of fBodyAccJerk-mean-Y variable
	 AVE-fBodyAccJerk-mean-Z Float 
		Average value of all observations of fBodyAccJerk-mean-Z variable
	 AVE-fBodyAccJerk-std-X Float 
		Average value of all observations of fBodyAccJerk-std-X variable
	 AVE-fBodyAccJerk-std-Y Float 
		Average value of all observations of fBodyAccJerk-std-Y variable
	 AVE-fBodyAccJerk-std-Z Float 
		Average value of all observations of fBodyAccJerk-std-Z variable
	 AVE-fBodyAccJerk-meanFreq-X Float 
		Average value of all observations of fBodyAccJerk-meanFreq-X variable
	 AVE-fBodyAccJerk-meanFreq-Y Float 
		Average value of all observations of fBodyAccJerk-meanFreq-Y variable
	 AVE-fBodyAccJerk-meanFreq-Z Float 
		Average value of all observations of fBodyAccJerk-meanFreq-Z variable
	 AVE-fBodyGyro-mean-X Float 
		Average value of all observations of fBodyGyro-mean-X variable
	 AVE-fBodyGyro-mean-Y Float 
		Average value of all observations of fBodyGyro-mean-Y variable
	 AVE-fBodyGyro-mean-Z Float 
		Average value of all observations of fBodyGyro-mean-Z variable
	 AVE-fBodyGyro-std-X Float 
		Average value of all observations of fBodyGyro-std-X variable
	 AVE-fBodyGyro-std-Y Float 
		Average value of all observations of fBodyGyro-std-Y variable
	 AVE-fBodyGyro-std-Z Float 
		Average value of all observations of fBodyGyro-std-Z variable
	 AVE-fBodyGyro-meanFreq-X Float 
		Average value of all observations of fBodyGyro-meanFreq-X variable
	 AVE-fBodyGyro-meanFreq-Y Float 
		Average value of all observations of fBodyGyro-meanFreq-Y variable
	 AVE-fBodyGyro-meanFreq-Z Float 
		Average value of all observations of fBodyGyro-meanFreq-Z variable
	 AVE-fBodyAccMag-mean Float 
		Average value of all observations of fBodyAccMag-mean variable
	 AVE-fBodyAccMag-std Float 
		Average value of all observations of fBodyAccMag-std variable
	 AVE-fBodyAccMag-meanFreq Float 
		Average value of all observations of fBodyAccMag-meanFreq variable
	 AVE-fBodyBodyAccJerkMag-mean Float 
		Average value of all observations of fBodyBodyAccJerkMag-mean variable
	 AVE-fBodyBodyAccJerkMag-std Float 
		Average value of all observations of fBodyBodyAccJerkMag-std variable
	 AVE-fBodyBodyAccJerkMag-meanFreq Float 
		Average value of all observations of fBodyBodyAccJerkMag-meanFreq variable
	 AVE-fBodyBodyGyroMag-mean Float 
		Average value of all observations of fBodyBodyGyroMag-mean variable
	 AVE-fBodyBodyGyroMag-std Float 
		Average value of all observations of fBodyBodyGyroMag-std variable
	 AVE-fBodyBodyGyroMag-meanFreq Float 
		Average value of all observations of fBodyBodyGyroMag-meanFreq variable
	 AVE-fBodyBodyGyroJerkMag-mean Float 
		Average value of all observations of fBodyBodyGyroJerkMag-mean variable
	 AVE-fBodyBodyGyroJerkMag-std Float 
		Average value of all observations of fBodyBodyGyroJerkMag-std variable
	 AVE-fBodyBodyGyroJerkMag-meanFreq Float 
		Average value of all observations of fBodyBodyGyroJerkMag-meanFreq variable
	 AVE-angletBodyAccMean-gravity Float 
		Average value of all observations of angletBodyAccMean-gravity variable
	 AVE-angletBodyAccJerkMean-gravityMean Float 
		Average value of all observations of angletBodyAccJerkMean-gravityMean variable
	 AVE-angletBodyGyroMean-gravityMean Float 
		Average value of all observations of angletBodyGyroMean-gravityMean variable
	 AVE-angletBodyGyroJerkMean-gravityMean Float 
		Average value of all observations of angletBodyGyroJerkMean-gravityMean variable
	 AVE-angleX-gravityMean Float 
		Average value of all observations of angleX-gravityMean variable
	 AVE-angleY-gravityMean Float 
		Average value of all observations of angleY-gravityMean variable
	 AVE-angleZ-gravityMean Float 
		Average value of all observations of angleZ-gravityMean variable
	


