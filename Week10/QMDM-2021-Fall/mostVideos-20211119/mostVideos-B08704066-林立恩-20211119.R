library(stringr)
filenames<-list.files('QMDM-2021-11-05')
filenames

#find all the names
location1<-c()
for(j in 1:38){location1<-append(location1,str_locate_all(filenames[j],'-'))}
location1
names=c()
for(i in 1:38){names<-append(names,str_sub(filenames[i],location1[[i]][1]+1,location1[[i]][2]-1))}
names 

#find the videos
#n is at location 5
videos1<-c()
for(i in 1:38){videos1<-append(videos1,str_sub(filenames[i],11,location1[[i]][1]-1))}
videos2<-c()
for(i in 1:38){videos2<-append(videos2,str_sub(filenames[i],6,8))}
videos1
videos2

myhomework<-data.frame(Name=names,from=videos2,to=videos1 )
myhomework

#find maximum
myhomework$Name[myhomework$to==max(myhomework$to)]

