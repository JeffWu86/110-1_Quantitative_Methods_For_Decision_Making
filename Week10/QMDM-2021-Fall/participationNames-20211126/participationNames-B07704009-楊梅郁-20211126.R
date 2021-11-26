fileName1 = list.files("C:\\Users\\user\\Downloads\\mostVideos-20211119")
data1 = as.data.frame(fileName1)
View(data1)

fileName2 = list.files("C:\\Users\\user\\Downloads\\mikeMarinSummary-20211119")
data2 = as.data.frame(fileName2)
View(data2)

fileName3 = list.files("C:\\Users\\user\\Downloads\\mostVideos-20211119")
data3 = as.data.frame(fileName3)
View(data3)


library(stringr)

data1_before_name = str_locate(data1[[1]], "-20211119")
data1_before_name
#data1_after_no = str_locate(data1[[1]], "mostVideos-")
#data1_after_no

#data2_after_no = str_locate(data2[[1]], "mikeMarinSummary-")
#data2_after_n0

#data3_after_no = str_locate(data2[[1]], "mikeMarinSummary-")
#data3_after_n0

data2_before_name = str_locate(data2[[1]], "-20211119")
data2_before_name

data3_before_name = str_locate(data3[[1]], "-20211119")
data3_before_name

data1_name = str_sub(data1[[1]], 22, data1_before_name[,1]-1)
data1_name


data2_name = str_sub(data2[[1]], 28, data2_before_name[,1]-1)
data2_name

data3_name = str_sub(data3[[1]], 22, data3_before_name[,1]-1)
data3_name


unique(c(data1_name,data2_name,data3_name))
