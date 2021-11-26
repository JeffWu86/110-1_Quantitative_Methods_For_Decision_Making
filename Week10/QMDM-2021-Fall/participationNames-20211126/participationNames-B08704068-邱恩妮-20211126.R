library(stringr)

filenames3 <- list.files("/Users/annis_chiu/Desktop/comparisonWithBenchmark-20211119")
filenames2 <- list.files("/Users/annis_chiu/Desktop/mikeMarinSummary-20211119")
filenames1 <- list.files("/Users/annis_chiu/Desktop/mostVideos-20211119")

aa <- as.data.frame(filenames1)
bb <- as.data.frame(filenames2)
cc <- as.data.frame(filenames3)

View(aa)
View(bb)
View(cc)

place1 <- str_locate_all(filenames1, "-")
lengthlist <- length(filenames1)

findnames <- function(oneFile) {
  allNames <- NULL
   for(i in 1:lengthlist) {
     name <- str_sub(files[i], place1[[i]][2,2]+1), place1[[i]][3,1]
   }
}