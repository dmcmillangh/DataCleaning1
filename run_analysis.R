## Course Project for Getting and Cleaning Data
## Oct 2015

require(data.table)
require(dplyr)
## all files downloaded and extracted to a directory called 'HAR'

## read list of data files to convert to dataframes
filelist<-list.files(path="HAR")
nFiles<-length(filelist)
dtnames<-substr(filelist,start=1,stop = nchar(filelist)-4)

for(i in 1:nFiles) 
{
  print(paste(i,"Creating",dtnames[i]))
  if(filelist[i]!="README.txt") assign(dtnames[i],fread(paste("HAR/",filelist[i],sep = "")))
}
## look at the results to break down what is what
tables()


## activities for each group are in y_test and y_train
## IDs (1-30) of person doing each activity are in subject_test and subject_train.
## Add these to data table as first 2 columns

##create data sets,assigning ID and activity
train<-data.table(subject_train$V1,y_train$V1,X_train)
test1<-data.table(subject_test$V1, y_test$V1,X_test)

## now combine
alldata<-rbind(train,test1)

## create a new variable and assign better names to activities
activity<-as.character(activity_labels$V2)
alldata<-mutate(alldata,act_name=activity[Activity])

## isolate the 'mean' and 'std' calculations from the dataset, extract the column names that 
## contain those words, irrespective of case
cols<-features$V2         ## all column names
cols<-gsub("-","_",cols)  ## get rid of hyphens in future variable names
meancols<-cols[grep("[Mm]ean",cols)]  ## find columns with Means
stdcols<- cols[grep("[Ss]td",cols)]    ## find columns with Std Dev
reducedCols<- unique(c("ID","Activity",meancols,stdcols,"act_name"))   ## in case there are any column names containing both

## now assign column names to  dataset
colnames(alldata)<-c("ID","Activity",cols,"act_name")
## then select only the needed columns
all_ms<-select(alldata,one_of(reducedCols))

## Thus "all_ms" is my tidy dataset 
with(all_ms,table(act_name,ID))
sum(with(all_ms,table(act_name,ID))) 

## Now do the summarizing

means_HAR_ms<- 
  all_ms %>% 
  group_by(ID,act_name,Activity) %>%
  summarise_each(funs(mean)) %>%
  arrange(ID,act_name)

print(means_all_ms,width=80)
## means data now in "means_all_ms"

