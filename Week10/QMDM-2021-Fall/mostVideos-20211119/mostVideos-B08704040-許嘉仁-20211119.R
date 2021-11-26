# Reading data aimed to analyze
library(tibble)
library(stringr)
library(dplyr)
fileNames <- list.files('/Users/xujiajin/Desktop/大學/大三上/數量方法與決策分析/QMDM-2021-11-05')

# Formatting dataframe

homeworkData <- tibble(Name = str_remove_all(str_sub(fileNames, 25, 28), "-"), 
                       From =  str_sub(fileNames, 6, 8), 
                       To =  str_remove_all(str_sub(fileNames, 11, 14), "-"))

most <- max(homeworkData$To)
namesOfMost <- as.character()
for(i in homeworkData)
{
  a <- filter(homeworkData, To == most)
  namesOfMost <- a$Name
}