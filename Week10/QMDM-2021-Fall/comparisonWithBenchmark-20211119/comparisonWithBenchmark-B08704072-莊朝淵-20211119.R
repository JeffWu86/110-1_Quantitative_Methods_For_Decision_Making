library(stringr)
filenames = list.files(path = "~/desktop/數量方法與決策分析/1105/QMDM-2021-11-05",  full.names = FALSE)
aa = as.data.frame(filenames)
str_sub(filenames[1], 16, 18)

?str_sub
str_sub(aa, start = 1, end = -1)

aa[[1]]
a1 = str_locate(aa[[1]], "Marin")
a2 = str_locate(aa[[1]], "To")
a3 = str_locate(aa[[1]], "-")
a4 = str_locate(aa[[1]], "-2021")

FromNumber = str_sub(aa[[1]], a1[,2]+1, a2[,1]-1)
ToNumber = str_sub(aa[[1]], a2[,2]+1, a3[,1]-1)
name = str_sub(aa[[1]], a3[,2]+1, a4[,1]-1)

homeworkMe = data.frame(Name = name ,From = FromNumber, To = ToNumber)


homeworkBenchmark = homework
conResult1 = c(as.matrix(homeworkMe))
conResult2 = c(as.matrix(homeworkBenchmark))
compareResult = conResult1 == conResult2
!compareResult
which(conResult1 == conResult2)
which(!compareResult)

