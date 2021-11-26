library(stringr)

fileNames <- list.files("QMDM-2021-11-05",full.names=FALSE)

# aa <- as.data.frame(fileNames)

# View(aa)

# str_sub(fileNames[1],16,17)

# test <- as.data.frame(matrix(NA,nrow=38, ncol=1,byrow=FALSE))


# for(i in 1:38){test[i,1] <- str_sub(fileNames[i],16,18)}

# split <- str_split(fileNames,"-")


#str_split(filesName,"-")不能用

splitTry <- str_split(fileNames,"To|-")

homework <-data.frame(Name = NA, From = str_sub(fileNames[],6,8), To = NA, file=NA)

for(i in 1:38){
  homework[i,1]<-splitTry[[i]][3]
  homework[i,3]<-splitTry[[i]][2]
  homework[i,4]<-splitTry[[i]][4]
  }
# save(list="homework",file="homework-B07704080-20211105.Rdata")


# homework2 <- homework[order(homework$To),]

vec <- seq(from=1, to =1.9, by=0.1)
vec <- as.character(vec)
vec_1 <- seq(from=1.11, to =1.17, by=0.01)
vec_1 <- as.character(vec_1)
vec_2 <- seq(from=2, to=2.9, by=0.1)
vec_2 <- as.character(vec_2)

chapters <- c(vec, c("1.10"), vec_1, vec_2 )

flag <- 0
for (i in chapters){
  if(flag == 1){break}
  for(j in 1:nrow(homework)){
    if (homework[j,"To"] == i){
      min <- homework[j,]
      print(homework[j,])
      flag <- 1
      break
    }
  }
}

save.Rdata(min, "homework-B07704080-20211118-min")

flag <- 0
for (i in rev(chapters)){
  if(flag == 1){break}
  for(j in 1:nrow(homework)){
    if (homework[j,"To"] == i){
      print(homework[j,])
      max <- homework[j,]
      flag <- 1
      break
    }
  }
}

save.Rdata(max, "homework-B07704080-20211118-max")
