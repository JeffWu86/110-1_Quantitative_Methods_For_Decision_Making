library(stringr)

file_data_1 <- list.files("mostVideos-20211119", full.names = FALSE)
file_1 <- as.data.frame(file_data_1)
View(file_1)

part_1s <- str_locate(file_1[,1], "-")
part_1f <- str_locate(file_1[,1], "-2021")
name_1 <- str_sub(file_1[,1], part_1s[,1]+11, part_1f[,1]-1)
name_data_1 <- data.frame(Name=name_1)
View(name_data_1)


file_data_2 <- list.files("comparisonWithBenchmark-20211119", full.names = FALSE)
file_2 <- as.data.frame(file_data_2)
View(file_2)

part_2s <- str_locate(file_2[,1], "-")
part_2f <- str_locate(file_2[,1], "-2021")
name_2 <- str_sub(file_2[,1], part_2s[,1]+11, part_2f[,1]-1)
name_data_2 <- data.frame(Name=name_2)
View(name_data_2)


file_data_3 <- list.files("mikeMarinSummary-20211119", full.names = FALSE)
file_3 <- as.data.frame(file_data_3)
View(file_3)

part_3s <- str_locate(file_3[,1], "-")
part_3f <- str_locate(file_3[,1], "-2021")
name_3 <- str_sub(file_3[,1], part_3s[,1]+11, part_3f[,1]-1)
name_data_3 <- data.frame(Name=name_3)
View(name_data_3)
