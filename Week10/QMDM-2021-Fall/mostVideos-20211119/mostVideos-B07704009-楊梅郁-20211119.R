fileName = list.files("C:\\Users\\user\\Downloads\\QMDM-2021-11-05")
data = as.data.frame(fileName)
View(data)

library(stringr)



data_Marin = str_locate(data[[1]], "Marin")
data_Marin
data_To = str_locate(data[[1]],"To")
data_To
data_bar = str_locate(data[[1]],"-")
data_bar
data_2021 = str_locate(data[[1]],"-2021")


data_from = str_sub(data[[1]], data_Marin[,2]+1, data_To[,1]-1)
data_to = str_sub(data[[1]], data_To[,2]+1, data_bar[,1]-1)
data_name = str_sub(data[[1]], data_bar[,2]+1, data_2021[,1]-1)


homework = data.frame(Name = data_name,  From = data_from,  To = data_to)
View(homework)

max(homework$To)

homework[which.max(homework$To), "Name"]
saveRDS(homework,file = "C:\\Users\\user\\Desktop\\台大三年級\\數量\\homework-B07704009-20211105.RData")
