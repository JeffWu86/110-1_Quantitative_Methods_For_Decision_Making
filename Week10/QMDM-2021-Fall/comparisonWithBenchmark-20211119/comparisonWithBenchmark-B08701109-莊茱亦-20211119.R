library(stringr)

FileName <- list.files(path="/Users/chu/110-1/數量方法/QMDM-2021-11-05")

pos1 <- str_locate(FileName,"-")
pos2 <- str_locate(FileName, "-2021")
pos3 <- str_locate(FileName, "Marin")
pos4 <- str_locate(FileName, "To")

Name <- str_sub(FileName, start = pos1[ ,1]+1, end = pos2[ ,1]-1)
From <- str_sub(FileName, start = pos3[ ,2]+1, end = pos4[ ,1]-1)
To <- str_sub(FileName, start = pos4[ ,2]+1, end = pos1[ ,1]-1)

homework <- data.frame(Name, From, To)

### 和benchmark比較 ###
homework2 <- homework  #My dataframe
load("homework-R08943016.RData")
homework1 <- homework  #Benchmark

homework1 <- as.matrix(homework1)  #轉成matrix比較
homework2 <- as.matrix(homework2)

a <- cbind(homework1, homework2)


for (i in 1:39){
  if (a[i, 1:3] == a[i, 4:6]){
    print(paste0(str(i), "TRUE"))}
  else{
    print(paste0(str(i), "FALSE"))}
}