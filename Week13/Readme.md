# Week 13

## Lecture

C

```R
# R08943016

rm(list = ls()) # Remove all the variables

# ggplot2
#install.packages("ggplot2")
library("ggplot2")
#install.packages("stringr")
library("stringr")


load("./YaowenChannelStats-20211212.RData")
viewstats1212 <- videostats

load("./YaowenChannelStats-20211217.RData")
viewstats1217 <- videostats

# Sort the data frame with the id
viewstats1212_sort <- viewstats1212[order(viewstats1212[,3]),]
viewstats1217_sort <- viewstats1217[order(viewstats1217[,3]),]

# Check same id
identical(viewstats1212_sort$id, viewstats1217_sort$id)



```


