
library(stringr)

comparison <- list.files("C:/Users/Julia/Documents/R/comparisonWithBenchmark-20211119-20211126T024438Z-001/comparisonWithBenchmark-20211119",full.names = F)
mike <- list.files("C:/Users/Julia/Documents/R/mikeMarinSummary-20211119-20211126T024040Z-001/mikeMarinSummary-20211119",full.names = F)
most <- list.files("C:/Users/Julia/Documents/R/mostVideos-20211119-20211126T024021Z-001/mostVideos-20211119",full.names = F)

comparison1 <- data.frame(comparison)
mike1 <- data.frame(mike)
most1 <- data.frame(most)

#Selecting Starting and Ending Numbers.
#Comparison
hyphonComparison <- str_locate(comparison1[[1]],"-")
dateComparison <- str_locate(comparison1[[1]],"-2021")

#Mike
hyphonMike <- str_locate(mike1[[1]],"-")
dateMike <- str_locate(mike1[[1]],"-2021")

hyphonMost <- str_locate(most1[[1]],"-")
dateMost <- str_locate(most1[[1]],"-2021")

#Selecting Name, From, To.
comparison2 <- str_sub(comparison1[[1]],hyphonComparison[,1]+11,dateComparison[,2]-5)
mike2 <- str_sub(mike1[[1]],hyphonMike[,1]+11,dateMike[,1]-1)
most2 <- str_sub(most1[[1]],hyphonMost[,1]+11,dateMost[,1]-1)

#Building DataFrame
comparison3 <- data.frame(Name=comparison2)
mike3 <- data.frame(Name=mike2)
most3 <- data.frame(Name=most2)

#Matirx
comparison4 <- c(as.matrix(comparison3))
mike4 <- c(as.matrix(mike3))
most4 <- c(as.matrix(most3))

combine <- c(comparison4, mike4, most4)
unique(combine)
finalresult <- data.frame(Name=combine)
