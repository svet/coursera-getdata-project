Coursera getdata project
========================

## Transformation steps

The ``run_analysis.R`` script performs the following:

1. Reads the human-readable variable names from the ``features.txt`` file.
2. Cleans the variables names strings removing characters "(", ")" and ",". This way these names can be used as column names in a dataframe.
3. Reads the train dataset from ``test/X_test.txt``, ``test/subject_test.txt`` and ``test/y_test.txt`` files.
4. Binds the data from all three files in single dataframe
5. Repeats steps 2-4 for traing data.
6. Creates complete dataset including all traing and test data.
7. Convert the data in "activity" column from integer to Factor with human-readable labels
8. Creates a list of variables which contains "Mean", "mean" or "std" in their names
9. Creates a new tidy dataset with all the observations and only columns selected in the previous step, "subject" and "activity". There are 10299 observations of 88 variables 
10. Saves the new tidy dataset to file named ``tidy1.txt``. To read this file use ``read.table("tidy1.txt", header=TRUE)``
11. Creates dataframe containing the mean of each variable in the tidy dataset for each subject and activity. There are 180 obervations (6 activity types * 30 subjects).
12. Saves the new tidy dataset with means to file ``tidy_means.txt``. This file can be read with ``read.table("tidy_means.txt", header=TRUE)``


## CodeBook

Codebook describing the variables in ``tidy1.txt`` and ``tidy_means.txt`` files can be found in CodeBook.md file

## How to run

To repeat the cleaning procedure execute the ``run_analysis.R`` as follows:

    mkdir clean; cd clean
    git clone https://github.com/svet/coursera-getdata-project/
    curl -o uci.zip https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
    unzip uci.zip 
    R CMD BATCH coursera-getdata-project/run_analysis.R 

   

