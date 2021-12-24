# R08943016

rm(list = ls()) # Remove all the variables

# ggplot2
#install.packages("ggplot2")
#install.packages("stringr")
#install.packages("forcats")
library("ggplot2")
library("stringr")
library("dplyr")
library("forcats")

load("./YaowenChannelStats-20211212.RData")
viewstats1212 <- videostats

load("./YaowenChannelStats-20211217.RData")
viewstats1217 <- videostats

load("./YaowenChannelStats-20211222.RData")
viewstats1222 <- videostats

# Sort the data frame with the id
viewstats1212_sort <- viewstats1212[order(viewstats1212[,3]),]
viewstats1217_sort <- viewstats1217[order(viewstats1217[,3]),]
viewstats1222_sort <- viewstats1222[order(viewstats1222[,3]),]

# Check same id
identical(viewstats1212_sort$id, viewstats1217_sort$id)
identical(viewstats1217_sort$id, viewstats1222_sort$id)

viewstat <- data.frame("title" = viewstats1212_sort$title,
                       "viewCount_1212" = viewstats1212_sort$viewCount,
                       "viewCount_1217" = viewstats1217_sort$viewCount,
                       "viewCount_1222" = viewstats1222_sort$viewCount,
                       "diff_1217" = viewstats1217_sort$viewCount - viewstats1212_sort$viewCount,
                       "diff_1222" = viewstats1222_sort$viewCount - viewstats1217_sort$viewCount,
                       "title_name" = str_sub(as.character(viewstats1212_sort$title[]), -3,-1),
                       "package_name" = str_sub(as.character(viewstats1212_sort$title[]), 
                                                1, str_locate(as.character(viewstats1212_sort$title[]), ":")[,1]-1)
                       )

viewstat$title_name[28] = "  Ðì¾V  "
viewstat$title_name[31] = "ˆÑÅæÂ"
viewstat$title_name[32] = "ˆÐÄè¤"
viewstat$title_name[39] = "  îëh  "
viewstat$title_name[43] = "  ßBÒÀ  "
viewstat$title_name[51] = "¸µ –½¡"

# Remove NA rows
viewstat <-viewstat[complete.cases(viewstat),]

viewstat <- viewstat[order(viewstat$diff_1217, decreasing = TRUE),]

for (i in 1:41){
  viewstat$title_name[i] = paste0(51-i, viewstat$title_name[i])
}

for (i in 42:50){
  viewstat$title_name[i] = paste0("0", 51-i, viewstat$title_name[i])
}

plot1 <- ggplot(viewstat, aes(x=title_name, y=diff_1217)) + 
  geom_bar(stat="identity", aes(fill=diff_1217)) + 
  labs(x='Name', y='viewCountDifference', title='YaoWenChannelStatsPlot1') + 
  coord_flip() + 
  scale_fill_gradient(low = "#21cfc9", high = "#2169cf") 
  #scale_fill_gradientn(colours = topo.colors(2))
plot1



# With two data, combine data again
viewstat_total <- data.frame("title" = viewstats1212_sort$title,
                             "viewCount_1212" = viewstats1212_sort$viewCount,
                             "viewCount_1217" = viewstats1217_sort$viewCount,
                             "viewCount_1222" = viewstats1222_sort$viewCount,
                             "diff_1217" = viewstats1217_sort$viewCount - viewstats1212_sort$viewCount,
                             "diff_1222" = viewstats1222_sort$viewCount - viewstats1217_sort$viewCount,
                             "diff_total" = viewstats1222_sort$viewCount - viewstats1212_sort$viewCount,
                             "title_name" = str_sub(as.character(viewstats1212_sort$title[]), -3,-1),
                             "package_name" = str_sub(as.character(viewstats1212_sort$title[]), 
                                                      1, str_locate(as.character(viewstats1212_sort$title[]), ":")[,1]-1)
)

viewstat_total$title_name[28] = "  Ðì¾V  "
viewstat_total$title_name[31] = "ˆÑÅæÂ"
viewstat_total$title_name[32] = "ˆÐÄè¤"
viewstat_total$title_name[39] = "  îëh  "
viewstat_total$title_name[43] = "  ßBÒÀ  "
viewstat_total$title_name[51] = "¸µ –½¡"

# Remove NA rows
viewstat_total <-viewstat_total[complete.cases(viewstat_total),]

viewstat_total <- viewstat_total[order(viewstat_total$diff_total, decreasing = TRUE),]

for (i in 1:41){
  viewstat_total$title_name[i] = paste0(51-i, viewstat_total$title_name[i])
}

for (i in 42:50){
  viewstat_total$title_name[i] = paste0("0", 51-i, viewstat_total$title_name[i])
}



viewstat_stack <- data.frame("title_name" = rep(viewstat_total$title_name, 2),
                            "package_name" = rep(viewstat_total$package_name, 2),
                            "diffDate" = c(rep("1217", 50), rep("1222", 50)),
                            "Diff" = c(viewstat_total$diff_1217, viewstat_total$diff_1222)
                            )

plot4 <- ggplot(viewstat_stack, aes(fill=diffDate, y=Diff, x=title_name)) + 
  geom_bar(position="stack", stat="identity") +
  coord_flip() + 
  labs(x='Name', y='viewCountDifference', title='YaoWenChannelStatsPlot4') + 
  facet_wrap(~package_name, scales="free_y")
  #scale_fill_manual(values=c("diff_1217"="#008a71", "diff_1222"="#0062cc")
plot4
