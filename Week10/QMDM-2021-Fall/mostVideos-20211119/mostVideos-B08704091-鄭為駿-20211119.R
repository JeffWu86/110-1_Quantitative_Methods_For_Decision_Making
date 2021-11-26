library(stringr)
fileName = list.files("C:\\Users\\user\\Downloads\\QMDM-2021-11-05")
data = as.data.frame(filenames)
str_sub(filenames[1], 16, 18)

?str_sub
str_sub(data, start = 1, end = -1)

aa[[1]]
a1 = str_locat(data[[1]], "Marin")
data_a1 
a2 = str_locate(data[[1]], "To")
data_a2
a3 = str_locate(data[[1]], "-")
data_a3
a4 = str_locate(data[[1]], "-2021")

FromNumber = str_sub(data[[1]], data_a1[,2]+1, daata_a2[,1]-1)
ToNumber = str_sub(data[[1]], data_a2[,2]+1, data_a3[,1]-1)
name = str_sub(data[[1]], data_a3[,2]+1, data_a4[,1]-1)

homework = data.frame(Name = name ,From = FromNumber, To = ToNumber)

attach(homework)
MaxNumber = max(To)
MaxRowNumber = grep(MaxNumber, To)
print(Name[MaxRowNumber])