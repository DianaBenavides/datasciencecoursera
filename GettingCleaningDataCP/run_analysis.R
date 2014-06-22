run <- function()
{
  
  #TRAIN DATA-----------------------------------------------------------------------------
  
  #get subjects
  subjects_train<-readLines("UCI HAR Dataset/train/subject_train.txt")
  subjects_train<-data.frame(t(data.frame(lapply(subjects_train, type.convert), stringsAsFactors=FALSE)))

  #sequence of ids for further use
  sequence<-seq(1,nrow(subjects_train),1)
  
  #subjects with id+subject
  subjects_train<-data.frame(cbind(sequence,subjects_train))
  
  #get train X
  x_train<-as.data.frame(read.table("UCI HAR Dataset/train/X_train.txt"))
  #train x with id
  x_train<-data.frame(cbind(sequence,x_train))
  
  #get train Y
  y_train<-as.data.frame(read.table("UCI HAR Dataset/train/Y_train.txt"))
  #train y with id
  y_train<-data.frame(cbind(sequence,y_train))
  
  #names of features
  names(subjects_train)<-c("id","subject")
  
  x_names<-readLines("UCI HAR Dataset/features.txt")
  names(x_train)<-c("id",x_names)
  
  names(y_train)<-c("id","activity")
  
  
  #merge 
  train<-merge(subjects_train,x_train,by.x="id",by.y="id")
  train<-merge(train,y_train,by.x="id",by.y="id")
  
  
  #TEST DATA-------------------------------------------------------------
  
  #get subjects
  subjects_test<-readLines("UCI HAR Dataset/test/subject_test.txt")
  subjects_test<-data.frame(t(data.frame(lapply(subjects_test, type.convert), stringsAsFactors=FALSE)))
  
  #sequence of ids for further use
  sequence<-seq(1,nrow(subjects_test),1)
  
  #subjects with id+subject
  subjects_test<-data.frame(cbind(sequence,subjects_test))
  
  #get train X
  x_test<-as.data.frame(read.table("UCI HAR Dataset/test/X_test.txt"))
  #train x with id
  x_test<-data.frame(cbind(sequence,x_test))
  
  #get train Y
  y_test<-as.data.frame(read.table("UCI HAR Dataset/test/Y_test.txt"))
  #train y with id
  y_test<-data.frame(cbind(sequence,y_test))
  
  #names of features
  names(subjects_test)<-c("id","subject")
  
  names(x_test)<-c("id",x_names)
  
  names(y_test)<-c("id","activity")
  
  
  #merge 
  test<-merge(subjects_test,x_test,by.x="id",by.y="id")
  test<-merge(test,y_test,by.x="id",by.y="id")
  
  
  #STEP 1: MERGE TRAIN AND TEST DATA-------------------------------------------------------------
  completeData<-rbind(train,test)
  
  #STEP2: EXTRACT ONLY MEAN AND STDV-------------------------------------------------------------
  idsSubjects<-completeData[,1:2]
  tBodyAccXYZ<-completeData[,3:8]
  tGravityAccXYZ<-completeData[,43:48]
  tBodyAccJerkXYZ<-completeData[,83:88]
  tBodyGyroXYZ<-completeData[,123:128]
  tBodyGyroJerkXYZ<-completeData[,163:168]
  tBodyAccMag<-completeData[,203:204]
  tGravityAccMag<-completeData[,216:217]
  tBodyAccJerkMag<-completeData[,229:230]
  tBodyGyroMag<-completeData[,242:243]
  tBodyGyroJerkMag<-completeData[,255:256]
  fBodyAccXYZ<-completeData[,268:273]
  fBodyAccJerkXYZ<-completeData[,347:352]
  fBodyGyroXYZ<-completeData[,426:431]
  fBodyAccMag<-completeData[,505:506]
  fBodyAccJerkMag<-completeData[,518:519]
  fBodyGyroMag<-completeData[,531:532]
  fBodyGyroJerkMa<-completeData[,544:545]
  activities<-completeData[,564]
  
  resumedData<-cbind(idsSubjects,tBodyAccXYZ, tGravityAccXYZ,tBodyAccJerkXYZ,tBodyGyroXYZ,tBodyGyroJerkXYZ,tBodyAccMag,tGravityAccMag,tBodyAccJerkMag,tBodyGyroMag,tBodyGyroJerkMag, fBodyAccXYZ,fBodyAccJerkXYZ,fBodyGyroXYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMa, activities)
  
  #STEP3: RENAME ACTIVITIES-------------------------------------------------------------
  resumedData$activities[resumedData$activities==1]<-"WALKING"
  resumedData$activities[resumedData$activities==2]<-"WALKING_UPSTAIRS"
  resumedData$activities[resumedData$activities==3]<-"WALKING_DOWNSTAIRS"
  resumedData$activities[resumedData$activities==4]<-"SITTING"
  resumedData$activities[resumedData$activities==5]<-"STANDING"
  resumedData$activities[resumedData$activities==6]<-"LAYING"
  

  #STEP4: APPROPIATE LABELING-------------------------------------------------------
  namesArray<-c("id","subject")
  
  for(i in 3:68)
  {
    namesArray<-c(namesArray,substr(names(resumedData)[i],regexpr(" ",names(resumedData)[i])[1]+1,nchar(names(resumedData)[i])))
  }
  
  namesArray<-c(namesArray,"activity")
  
  names(resumedData)<-namesArray
  
  #STEP5: TIDY DATASET
  summarizedData<-aggregate(.  ~ resumedData$activity + resumedData$subject, data=resumedData[,c(3:68)], FUN=mean)
  
  names(summarizedData)[1]<-"activity"
  names(summarizedData)[2]<-"subject"
  
  write.table(summarizedData,"tidyDataSet.txt",sep=",")
  summarizedData
}