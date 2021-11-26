library(stringr)

# load the file
filenames<-list.files('benchmarkData')
filenames

# total number of the data
dataTotal <- 39

# find the location
location1<-c()
names<-c()
for(j in 1:dataTotal){location1<-append(location1,str_locate_all(filenames[j],'-'))}
for(i in 1:dataTotal){names<-append(names,str_sub(filenames[i],location1[[i]][1]+1,location1[[i]][2]-1))}

videos<-c()
for(i in 1:dataTotal){videos<-append(videos,str_sub(filenames[i],11,location1[[i]][1]-1))}

fromwhere <- c()
for(i in 1:dataTotal){fromwhere<-append(fromwhere,str_sub(filenames[i],6,8))}

myhomework<-data.frame(Name=names,From=fromwhere,To=videos )

max(myhomework[,3])
max_to <- max(myhomework[,3])
max_peep <- c()
for(j in 1:dataTotal){if(myhomework[j,3] >= max_to){
  max_peep <- append(max_peep, myhomework[j,1])
}}
max_peep

