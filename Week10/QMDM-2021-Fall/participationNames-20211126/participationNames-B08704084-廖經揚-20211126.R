library(stringr)

# load the file
HW1<-list.files('/Users/hansliao/Downloads/drive-download-20211126T024234Z-001/comparisonWithBenchmark-20211119')
HW1
HW2<-list.files('/Users/hansliao/Downloads/drive-download-20211126T024234Z-001/mikeMarinSummary-20211119')
HW2
HW3<-list.files('/Users/hansliao/Downloads/drive-download-20211126T024234Z-001/mostVideos-20211119')
HW3

# ÕÒ³öÃû×Ö
location<-c()
HW1names<-c()
for(j in 1:41){location<-append(location,str_locate_all(HW1[j],'-'))}
for(i in 1:41){HW1names<-append(HW1names,str_sub(HW1[i],location[[i]][2]+1,location[[i]][3]-1))}
HW1names

location<-c()
HW2names<-c()
for(j in 1:44){location<-append(location,str_locate_all(HW2[j],'-'))}
for(i in 1:44){HW2names<-append(HW2names,str_sub(HW2[i],location[[i]][2]+1,location[[i]][3]-1))}
HW2names

location<-c()
HW3names<-c()
for(j in 1:44){location<-append(location,str_locate_all(HW3[j],'-'))}
for(i in 1:44){HW3names<-append(HW3names,str_sub(HW3[i],location[[i]][2]+1,location[[i]][3]-1))}

allName <- c(HW1names,HW2names,HW3names)
finalresult <- unique(allName)

finalresult <- data.frame(Names=finalresult)
finalresult <- finalresult[!is.na(finalresult)]
finalresult <- data.frame(Names=finalresult)
