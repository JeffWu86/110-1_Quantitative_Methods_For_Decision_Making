library(stringr)
filenames = list.files(path = "~/downloads/QMDM-2021-11-05",  full.names = FALSE)
aa = as.data.frame(filenames)
str_sub(filenames[1], 16, 18)


aa[[1]]
yone = str_locate(aa[[1]], "Marin")
ytwo = str_locate(aa[[1]], "To")
ythree = str_locate(aa[[1]], "-")
yfour = str_locate(aa[[1]], "-2021")

from_n = str_sub(aa[[1]], yone[,2]+1, ytwo[,1]-1)
to_n = str_sub(aa[[1]], ytwo[,2]+1, ythree[,1]-1)
name = str_sub(aa[[1]], ythree[,2]+1, yfour[,1]-1)

homework = data.frame(Name = name ,From = from_n, To = to_n)

attach(homework)
MaxNum = max(To)
MaxRowNum = grep(MaxNum, To)
print(Name[MaxRowNum])