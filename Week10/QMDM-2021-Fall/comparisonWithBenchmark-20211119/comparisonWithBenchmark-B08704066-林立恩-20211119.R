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

#compare the benchmark
#Test whether two data.frame is the same
print(nrow(myhomework)==nrow(homework)) #row number is different - there are 38 rows vs 39 rows
print(ncol(myhomework)==ncol(homework)) #column number is the same - 3 columns

for(i in 1:38){for (j in 1:3){
  if (myhomework[i,j]!=homework[i,j]){
  print(myhomework[i,j])
  print(homework[i,j])
  print('DIFFERENT!')}}}
#item from 9 to 38 are different

#teacher's method
mymatrix<-as.matrix(myhomework)
matrix1<-as.matrix((homework))
list1<-as.list(matrix1)
mylist<-as.list(mymatrix)
list1[1:114]==mylist[1:114]
       
#use which to identify which element is different
which(!(myhomework[1:38,]==homework[1:38,]))

#use identical to see whether they are exactly the same
identical(myhomework,homework)


      