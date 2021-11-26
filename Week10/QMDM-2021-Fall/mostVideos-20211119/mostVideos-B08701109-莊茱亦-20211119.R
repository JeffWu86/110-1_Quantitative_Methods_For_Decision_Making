### 誰看的videos最多 ###

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

attach(homework)
MaxVideo = max(To)
print(homework[To==MaxVideo, 1])