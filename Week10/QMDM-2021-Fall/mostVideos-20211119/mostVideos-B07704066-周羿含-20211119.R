filenames = list.files(path="./QMDM-2021-11-05/")
data = as.data.frame(filenames)

library(stringr)

Marin = str_locate(data[[1]], "Marin")

To = str_locate(data[[1]],"To")

line = str_locate(data[[1]],"-")



from = str_sub(data[[1]], Marin[,2]+1, To[,1]-1)
to = str_sub(data[[1]], To[,2]+1, line()[,1]-1)
name = str_sub(data[[1]], line[,2]+1)


