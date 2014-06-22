==================================================================
Getting and Cleaning Data Course Project
==================================================================
Diana Benavides
Student
dk.benavides20@uniandes.edu.co
==================================================================


Source code
==================================================================

The file run_analysis.R contains the source code for performing some operations over the UCI HAR Dataset. 

This source code is organized in various sections, as follows: 

- Section 0: Lines 4 to 72: Contains the required code for getting and merging training and test data from the source files. 

- Section 1: Lines 75 to 76: Merges train and test set. 

- Section 2: Lines 78 to 99: Extracts only the mean and standard deviation variables from the merged data, as well as the subject and activity.

- Section 3: Lines 101 to 107: Rename activities to the appropiated names, according to the names provided by the corresponding file in UCI HAR Dataset folder. 

- Section 4: Lines 110 to 120: Appropiately labels the names of variables; for measure variables they are named according to the corresponding file in UCI HAR Dataset folder. 

- Section 5: Lines 123 to 129: Obtains a data set with the mean for each of the variables, grouped by subject and actitity. This dataset is saved to the file tidyDataSet.txt.



A file summarizing data from UCI HAR Dataset is on the following file:
=========================================

- 'tidyDataSet.txt'


Notes: 
======
- For the source code to work, you should place the UCI HAR Dataset folder in the same directory as the run_analysis.R file.

For more information contact: dk.benavides20@uniandes.edu.co

