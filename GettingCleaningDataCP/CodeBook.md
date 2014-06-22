Getting and Cleaning Data - CodeBook for Course Project
By: Diana Benavides
-------------------------------------------------------------------
-------------------------------------------------------------------

The file named tidyDataSet.txt contains a summarized version of the UCI HAR Dataset project, available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones, containing only the means and standard deviations of 66 of the 559 original variables, grouped by activity label and subject measured. 

This file contains 180 rows, with the next 68 attributes or variables: 

-------------------------------------------------------------------
Variable			Type	Description
-------------------------------------------------------------------
activity			String	Contains one of the activities from: Walking,Walking Downstairs, Walking Upstairs, Sitting, Standing, Laying
subject				Numeric	Containst the number of the observed person (subject)
tBodyAcc-mean()-X		Numeric	Contains the mean of the tBodyAcc-mean()-X measure for each activity and subject
tBodyAcc-mean()-Y		Numeric	Contains the mean of the ttBodyAcc-mean()-Y measure for each activity and subject
tBodyAcc-mean()-Z		Numeric	Contains the mean of the tBodyAcc-mean()-Z measure for each activity and subject
tBodyAcc-std()-X		Numeric	Contains the mean of the  tBodyAcc-std()-X measure for each activity and subject
tBodyAcc-std()-Y		Numeric	Contains the mean of the tBodyAcc-std()-Y measure for each activity and subject
tBodyAcc-std()-Z		Numeric	Contains the mean of the tBodyAcc-std()-Z measure for each activity and subject
tGravityAcc-mean()-X		Numeric	Contains the mean of the tGravityAcc-mean()-X measure for each activity and subject
tGravityAcc-mean()-Y		Numeric	Contains the mean of the tGravityAcc-mean()-Y measure for each activity and subject
tGravityAcc-mean()-Z		Numeric	Contains the mean of the tGravityAcc-mean()-Z measure for each activity and subject
tGravityAcc-std()-X		Numeric	Contains the mean of the tGravityAcc-std()-X measure for each activity and subject
tGravityAcc-std()-Y		Numeric	Contains the mean of the tGravityAcc-std()-Y measure for each activity and subject
tGravityAcc-std()-Z		Numeric	Contains the mean of the tGravityAcc-std()-Z measure for each activity and subject
tBodyAccJerk-mean()-X		Numeric	Contains the mean of the tBodyAccJerk-mean()-X measure for each activity and subject
tBodyAccJerk-mean()-Y		Numeric	Contains the mean of the tBodyAccJerk-mean()-Y measure for each activity and subject
tBodyAccJerk-mean()-Z		Numeric	Contains the mean of the tBodyAccJerk-mean()-Z measure for each activity and subject
tBodyAccJerk-std()-X		Numeric	Contains the mean of the tBodyAccJerk-std()-X measure for each activity and subject
tBodyAccJerk-std()-Y		Numeric	Contains the mean of the tBodyAccJerk-std()-Y measure for each activity and subject
tBodyAccJerk-std()-Z		Numeric	Contains the mean of the tBodyAccJerk-std()-Z measure for each activity and subject
tBodyGyro-mean()-X		Numeric	Contains the mean of the tBodyGyro-mean()-X measure for each activity and subject
tBodyGyro-mean()-Y		Numeric	Contains the mean of the tBodyGyro-mean()-Y measure for each activity and subject
tBodyGyro-mean()-Z		Numeric	Contains the mean of the tBodyGyro-mean()-Z measure for each activity and subject
tBodyGyro-std()-X		Numeric	Contains the mean of the tBodyGyro-std()-X measure for each activity and subject
tBodyGyro-std()-Y		Numeric	Contains the mean of the tBodyGyro-std()-Y measure for each activity and subject
tBodyGyro-std()-Z		Numeric	Contains the mean of the tBodyGyro-std()-Z measure for each activity and subject
tBodyGyroJerk-mean()-X		Numeric	Contains the mean of the tBodyGyroJerk-mean()-X measure for each activity and subject
tBodyGyroJerk-mean()-Y		Numeric	Contains the mean of the tBodyGyroJerk-mean()-Y measure for each activity and subject
tBodyGyroJerk-mean()-Z		Numeric	Contains the mean of the tBodyGyroJerk-mean()-Z measure for each activity and subject
tBodyGyroJerk-std()-X		Numeric	Contains the mean of the tBodyGyroJerk-std()-X measure for each activity and subject
tBodyGyroJerk-std()-Y		Numeric	Contains the mean of the tBodyGyroJerk-std()-Y measure for each activity and subject
tBodyGyroJerk-std()-Z		Numeric	Contains the mean of the tBodyGyroJerk-std()-Z measure for each activity and subject
tBodyAccMag-mean()		Numeric	Contains the mean of the tBodyAccMag-mean() measure for each activity and subject
tBodyAccMag-std()		Numeric	Contains the mean of the tBodyAccMag-std() measure for each activity and subject
tGravityAccMag-mean()		Numeric	Contains the mean of the tGravityAccMag-mean() measure for each activity and subject
tGravityAccMag-std()		Numeric	Contains the mean of the tGravityAccMag-std() measure for each activity and subject
tBodyAccJerkMag-mean()		Numeric	Contains the mean of the tBodyAccJerkMag-mean() measure for each activity and subject
tBodyAccJerkMag-std()		Numeric	Contains the mean of the tBodyAccJerkMag-std() measure for each activity and subject
tBodyGyroMag-mean()		Numeric	Contains the mean of the tBodyGyroMag-mean() measure for each activity and subject
tBodyGyroMag-std()		Numeric	Contains the mean of the tBodyGyroMag-std() measure for each activity and subject
tBodyGyroJerkMag-mean()		Numeric	Contains the mean of the tBodyGyroJerkMag-mean() measure for each activity and subject
tBodyGyroJerkMag-std()		Numeric	Contains the mean of the tBodyGyroJerkMag-std() measure for each activity and subject
fBodyAcc-mean()-X		Numeric	Contains the mean of the fBodyAcc-mean()-X measure for each activity and subject
fBodyAcc-mean()-Y		Numeric	Contains the mean of the fBodyAcc-mean()-Y measure for each activity and subject
fBodyAcc-mean()-Z		Numeric	Contains the mean of the fBodyAcc-mean()-Z measure for each activity and subject
fBodyAcc-std()-X		Numeric	Contains the mean of the fBodyAcc-std()-X measure for each activity and subject
fBodyAcc-std()-Y		Numeric	Contains the mean of the fBodyAcc-std()-Y measure for each activity and subject
fBodyAcc-std()-Z		Numeric	Contains the mean of the fBodyAcc-std()-Z measure for each activity and subject
fBodyAccJerk-mean()-X		Numeric	Contains the mean of the fBodyAccJerk-mean()-X measure for each activity and subject
fBodyAccJerk-mean()-Y		Numeric	Contains the mean of the  fBodyAccJerk-mean()-Y measure for each activity and subject
fBodyAccJerk-mean()-Z		Numeric	Contains the mean of the fBodyAccJerk-mean()-Z measure for each activity and subject
fBodyAccJerk-std()-X		Numeric	Contains the mean of the fBodyAccJerk-std()-X measure for each activity and subject
fBodyAccJerk-std()-Y		Numeric	Contains the mean of the fBodyAccJerk-std()-Y measure for each activity and subject
fBodyAccJerk-std()-Z		Numeric	Contains the mean of the fBodyAccJerk-std()-Z measure for each activity and subject
fBodyGyro-mean()-X		Numeric	Contains the mean of the fBodyGyro-mean()-X measure for each activity and subject
fBodyGyro-mean()-Y		Numeric	Contains the mean of the fBodyGyro-mean()-Y measure for each activity and subject
fBodyGyro-mean()-Z		Numeric	Contains the mean of the fBodyGyro-mean()-Z measure for each activity and subject
fBodyGyro-std()-X		Numeric	Contains the mean of the fBodyGyro-std()-X measure for each activity and subject
fBodyGyro-std()-Y		Numeric	Contains the mean of the fBodyGyro-std()-Y measure for each activity and subject
fBodyGyro-std()-Z		Numeric	Contains the mean of the fBodyGyro-std()-Z measure for each activity and subject
fBodyAccMag-mean()		Numeric	Contains the mean of the fBodyAccMag-mean()measure for each activity and subject
fBodyAccMag-std()		Numeric	Contains the mean of the fBodyAccMag-std() measure for each activity and subject
fBodyBodyAccJerkMag-mean()	Numeric	Contains the mean of the fBodyBodyAccJerkMag-mean() measure for each activity and subject
fBodyBodyAccJerkMag-std()	Numeric	Contains the mean of the fBodyBodyAccJerkMag-std() measure for each activity and subject
fBodyBodyGyroMag-mean()		Numeric	Contains the mean of the fBodyBodyGyroMag-mean() measure for each activity and subject
fBodyBodyGyroMag-std()		Numeric	Contains the mean of the fBodyBodyGyroMag-std() measure for each activity and subject
fBodyBodyGyroJerkMag-mean()	Numeric	Contains the mean of the fBodyBodyGyroJerkMag-mean() measure for each activity and subject
fBodyBodyGyroJerkMag-std()	Numeric	Contains the mean of the fBodyBodyGyroJerkMag-std() measure for each activity and subject

-------------------------------------------------------------------

This file has been obtained by performing a set of transformations over the training and test data of the UCI HAR Dataset (in source file run_analysis.R). Those transformations can be summarized as follows: 

1.	Train and test data were read into R. Taking into account that each of these data were separated 
	into three different files: one for subject, one for measures (X) and one for activity labels (Y), 
	a merge operation was necessary in order to group all of these files by its corresponding row number; 
	an id for each row was created and used for merging. Once the merged train and test sets were obtained, 
	those two were merged too into one dataset by using rbind R function. 
2.	Once a dataset with all of the variables and rows was obtained, a filter was applied in order to obtain 
	only a subset of variables, in particular only those referring to the mean and standard deviation of 
	the different measures of the UCI HAR Dataset. Those variables, along with the row id, subject id and activity label 
	were saved to a new dataset. 
3.	An appropriate labeling of the activities in this dataset was performed; for this sake, the corresponding 
	labels for each of the activities numbers were used, according to the activity_labels file from 
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 
4.	In the same manner, an appropriate labeling of each of the measure variables for the dataset was established, 
	by using the description of the activities in activities file from 
	http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 
5.	Finally, data was aggregated by using aggregate function in R, in order to group measures by activity and subject, 
	thus obtaining the mean of each variable in those groups. 



