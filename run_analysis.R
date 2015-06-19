#set parent working directory to current directory
this.dir <- dirname(parent.frame(2)$ofile)
setwd(this.dir)

##load individual "subject" data
subject_test<-read.table("test/subject_test.txt") #2947 rows
subject_train<-read.table("train/subject_train.txt") #7352 rows
#combine subject test and training sets
subject_total<-rbind(subject_test,subject_train) #10299 rows
#rename column to "Subject"
names(subject_total)<-"Subject"

##load activity data
activity_labels<-read.table("activity_labels.txt") #6rows, 2 col (1-num,2-descrip)
names(activity_labels)<-c("Activity","Activity_Description")
y_test<-read.table("test/y_test.txt") #2947 rows
y_train<-read.table("train/y_train.txt") #7352 rows
#combine y test and training sets
y_total<-rbind(y_test,y_train) #10299 rows
#rename column to "Activity"
names(y_total)<-"Activity"

#load features data
features<-read.table("features.txt") #561 rows, 2 col (1-num, 2-descrip)
x_test<-read.table("test/x_test.txt") #2947 rows, 561 col
x_train<-read.table("train/x_train.txt") #7352 rows, 561 col
#combine x test and training sets
x_total<-rbind(x_test,x_train) #10299 rows, 561col
#rename variables for x
names(x_total)<-features[,2]
##split out all mean and std
keep<-grep("mean|std",features[,2])
x_cut<-x_total[,keep]


#create merged final table
master<-cbind(x_cut,subject_total,y_total)
final<-merge(x=master,y=activity_labels,by.x="Activity",by.y="Activity")
final$Activity<-NULL

#create table aggregated of means by activity and subject
tidy<-aggregate(final,by=list(Activity=final$Activity_Description,
                        Subject=final$Subject),mean)
tidy<-tidy[,1:81]
write.table(tidy,"tidy_data.txt",row.name=FALSE)
