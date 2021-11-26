#find the names
#download the files
library(stringr)
#1
filenames1<-list.files('comparisonWithBenchmark-20211119')
filenames1
#41 files
location1<-c()
for(j in 1:41){location1<-append(location1,str_locate_all(filenames1[j],'-'))}
location1
names1=c()
for(i in 1:41){names1<-append(names1,str_sub(filenames1[i],location1[[i]][2]+1,location1[[i]][3]-1))}
names1 
comparisonWithBenchmark_names<-data.frame(names1)

#2
filenames2<-list.files('mikeMarinSummary-20211119')
filenames2
#44 files
location2<-c()
for(j in 1:44){location2<-append(location2,str_locate_all(filenames2[j],'-'))}
location2
names2=c()
for(i in 1:44){names2<-append(names2,str_sub(filenames2[i],location2[[i]][2]+1,location2[[i]][3]-1))}
names2
mikeMarinSummary_names<-data.frame(names2)

#3
filenames3<-list.files('mostVideos-20211119')
filenames3
location3<-c()
for(j in 1:43){location3<-append(location3,str_locate_all(filenames3[j],'-'))}
location3
names3=c()
for(i in 1:43){names3<-append(names3,str_sub(filenames3[i],location3[[i]][2]+1,location3[[i]][3]-1))}
names3 
mostVideos_names<-data.frame(names3)