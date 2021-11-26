library(stringr)
filenames = list.files(path = "~/desktop/R語言",  full.names = FALSE)
cc = as.data.frame(filenames)
str_sub(filenames[1], 16, 18)

str_sub(cc, start = 1, end = -1)

cc[[1]]
c1 = str_locate(cc[[1]], "Marin")
c2 = str_locate(cc[[1]], "To")
c3 = str_locate(cc[[1]], "-")
c4 = str_locate(cc[[1]], "-2021")

FromNumber = str_sub(cc[[1]], c1[,2]+1, c2[,1]-1)
ToNumber = str_sub(cc[[1]], c2[,2]+1, c3[,1]-1)
name = str_sub(cc[[1]], c3[,2]+1, c4[,1]-1)

homeworkMe = data.frame(Name = name ,From = FromNumber, To = ToNumber)

attach(homework)
MaxNumber = max(To)
MaxRowNumber = grep(MaxNumber, To)
print(Name[MaxRowNumber])

attach(homework)
MaxNumber = max(To)
MaxRowNumber = grep(MaxNumber, To)
print(Name[MaxRowNumber])
attach(homework)
MaxNumber = max(To)
MaxRowNumber = grep(MaxNumber, To)
print(Name[MaxRowNumber])

aa
bb
cc
d
e
a