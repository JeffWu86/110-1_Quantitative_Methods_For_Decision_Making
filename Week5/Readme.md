# Week 5

## Lecture

```R
# Some packages 
# ggplot2, dplyr, readr, readxl, googlesheets4, stringr, Base R, Advance R, tidyverse
# Find 5 commands to be introduced in Youtube
# Within 5~10 minutes
# Deadline: 11/12

# Technique: Zoom in/Zoom out

# Install package "stringr"
> install.packages("stringr")

# Split a list of string
> kk <- c("John Wang", "Tom Cruise", "Kelly Chen")
> yy <- str_split(kk, " ")
> yy
[[1]]
[1] "John" "Wang"

[[2]]
[1] "Tom"    "Cruise"

[[3]]
[1] "Kelly" "Chen" 


# How to split a string with multiple patterns?
> kk <- "abcdefgheijk"
# Using | in double quoatation "" (For strings)
> str_split(kk, "c|i")
[[1]]
[1] "ab"     "defghe" "jk"    
> str_split(kk, "cd|i")
[[1]]
[1] "ab"    "efghe" "jk"   
# Or using [], one of (Just for characters)
> str_split(kk, "[ci]")
[[1]]
[1] "ab"     "defghe" "jk"    


# Replace a pdf file name
> install.packages("pdftools")
> library(pdftools)
> pdfText <- pdf_text(paste0(getwd(), "/05160218039.004.pdf"))
> text1 <- pdfText[1]
> pos1 <- str_locate(text1, "發文字號：")
> # pos2 <- str_locate(text1, "彰院毓110司執助丁字第683號")
> pos3 <- str_locate(text1, "主旨")
> wantedString <- str_sub(text1, pos1[1,2]+1, pos3[1,1]-3)
> file.rename(paste0(getwd(), "/05160218039.004.pdf"), paste0(getwd(), "/", wantedString, ".pdf"))
[1] TRUE
# If your working directory is correct, you don't need getwd()

# Other commands: "remove", "choose", "append" ...

# "list.files" command to find files in the directory
> list.files(path=getwd(), full.names = F)
[1] "Code_Week_2.R"                  "Code_Week_3.R"                  "Code_Week_4.R"                 
[4] "Code_Week_5.R"                  "output-2021-10-15.RData"        "彰院毓110司執助丁字第683號.pdf"
```

[Google sheet for HW 1](https://docs.google.com/spreadsheets/d/1x07ZHmCFt2azUkBpwc1ktkP3BE2Ezy5CiRY0POfnxQM/edit#gid=0)

