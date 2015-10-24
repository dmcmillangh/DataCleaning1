
###CodeBook for Cleaning Data Course Project
October 2015
Dave McMillan

####From the original set of files are listed below:
			Bytes	File name 
			   80 activity_labels.txt
		6,041,350 body_acc_x_test.txt
	   15,071,600 body_acc_x_train.txt
		6,041,350 body_acc_y_test.txt
	   15,071,600 body_acc_y_train.txt
		6,041,350 body_acc_z_test.txt
	   15,071,600 body_acc_z_train.txt
		6,041,350 body_gyro_x_test.txt
	   15,071,600 body_gyro_x_train.txt
		6,041,350 body_gyro_y_test.txt
	   15,071,600 body_gyro_y_train.txt
		6,041,350 body_gyro_z_test.txt
	   15,071,600 body_gyro_z_train.txt
		   15,785 features.txt
			2,809 features_info.txt
			7,934 subject_test.txt
		   20,152 subject_train.txt
		6,041,350 total_acc_x_test.txt
	   15,071,600 total_acc_x_train.txt
		6,041,350 total_acc_y_test.txt
	   15,071,600 total_acc_y_train.txt
		6,041,350 total_acc_z_test.txt
	   15,071,600 total_acc_z_train.txt
	   26,458,166 X_test.txt
	   66,006,256 X_train.txt
			5,894 y_test.txt
		   14,704 y_train.txt
		   
#####The activity_labels, features, subject_test, subject_train files are of interest as identifiers.
	activity_labels		lists the 6 activities carreied out by each participant
	features			is a list of column names in X_test and X_train
	subject_test		is a vector of IDs for participant in each measurement listed in X_test
	subject_train		is a vector of IDs for participant in each measurement listed in X_train
	body_				files are raw measurements not needed for work with summary statistics
	total_				files of raw measurements not needed
	
#####The file created in this project is mean_HAR_ms.
######	It is a subset of the columns of X_test and X_train, which were combined for these purposes.
######	Following is a list of the variables in this file:
		ID                ID number of paticipant in the trials (Numeric 1-30)
		act_name          Character identifier of the 6 activities undertaken
			tBodyAcc_mean()_X       Each variable below is a normalized measure (-1 to 1) from the above incoming files
			tBodyAcc_mean()_Z       filtered so as to contain "Mean" or "Std", then averaged
			tGravityAcc_mean()_X    for each participant/activity cobination (ie 30*6=180 rows)
			tGravityAcc_mean()_X
			tGravityAcc_mean()_Y
			tGravityAcc_mean()_Z
			tBodyAccJerk_mean()_X
			tBodyAccJerk_mean()_Y
			tBodyAccJerk_mean()_Z
			tBodyGyro_mean()_X
			tBodyGyro_mean()_Y
			tBodyGyro_mean()_Z
			tBodyGyroJerk_mean()_X
			tBodyGyroJerk_mean()_Y
			tBodyGyroJerk_mean()_Z
			tBodyAccMag_mean()
			tGravityAccMag_mean()
			tBodyAccJerkMag_mean()
			tBodyGyroMag_mean()
			tBodyGyroJerkMag_mean()
			fBodyAcc_mean()_X
			fBodyAcc_mean()_Y
			fBodyAcc_mean()_Z
			fBodyAcc_meanFreq()_X
			fBodyAcc_meanFreq()_Y
			fBodyAcc_meanFreq()_Z
			fBodyAccJerk_mean()_X
			fBodyAccJerk_mean()_Y
			fBodyAccJerk_mean()_Z
			fBodyAccJerk_meanFreq()_X
			fBodyAccJerk_meanFreq()_Y
			fBodyAccJerk_meanFreq()_Z
			fBodyGyro_mean()_X
			fBodyGyro_mean()_Y
			fBodyGyro_mean()_Z
			fBodyGyro_meanFreq()_X
			fBodyGyro_meanFreq()_Y
			fBodyGyro_meanFreq()_Z
			fBodyAccMag_mean()
			fBodyAccMag_meanFreq()
			fBodyBodyAccJerkMag_mean()
			fBodyBodyAccJerkMag_meanFreq()
			fBodyBodyGyroMag_mean()
			fBodyBodyGyroMag_meanFreq()
			fBodyBodyGyroJerkMag_mean()
			fBodyBodyGyroJerkMag_meanFreq()
			angle(tBodyAccMean,gravity)
			angle(tBodyAccJerkMean),gravityMean)
			angle(tBodyGyroMean,gravityMean)
			angle(tBodyGyroJerkMean,gravityMean)
			angle(X,gravityMean)
			angle(Y,gravityMean)
			angle(Z,gravityMean)
			tBodyAcc_std()_X
			tBodyAcc_std()_Y
			tBodyAcc_std()_Z
			tGravityAcc_std()_X
			tGravityAcc_std()_Y
			tGravityAcc_std()_Z
			tBodyAccJerk_std()_X
			tBodyAccJerk_std()_Y
			tBodyAccJerk_std()_Z
			tBodyGyro_std()_X
			tBodyGyro_std()_Y
			tBodyGyro_std()_Z
			tBodyGyroJerk_std()_X
			tBodyGyroJerk_std()_Y
			tBodyGyroJerk_std()_Z
			tBodyAccMag_std()
			tGravityAccMag_std()
			tBodyAccJerkMag_std()
			tBodyGyroMag_std()
			tBodyGyroJerkMag_std()
			fBodyAcc_std()_X
			fBodyAcc_std()_Y
			fBodyAcc_std()_Z
			fBodyAccJerk_std()_X
			fBodyAccJerk_std()_Y
			fBodyAccJerk_std()_Z
			fBodyGyro_std()_X
			fBodyGyro_std()_Y
			fBodyGyro_std()_Z
			fBodyAccMag_std()
			fBodyBodyAccJerkMag_std()
			fBodyBodyGyroMag_std()
			fBodyBodyGyroJerkMag_std()
