# R08943016

rm(list = ls()) # Remove all the variables

# ggplot2
#install.packages("ggplot2")
library("ggplot2")
#install.packages("stringr")
library("stringr")
library("dplyr")
#install.packages("forcats")
library("forcats")

load("./YaowenChannelStats-20211212.RData")
viewstats1212 <- videostats

load("./YaowenChannelStats-20211217.RData")
viewstats1217 <- videostats

# Sort the data frame with the id
viewstats1212_sort <- viewstats1212[order(viewstats1212[,3]),]
viewstats1217_sort <- viewstats1217[order(viewstats1217[,3]),]

# Check same id
identical(viewstats1212_sort$id, viewstats1217_sort$id)


#viewCount1212 <- videostats$viewCount

viewCount1217 <- videostats$viewCount

viewstat <- data.frame("title_1212" = viewstats1212_sort$title,
                       "title_1217" = viewstats1217_sort$title,
                       "viewCount_1212" = viewstats1212_sort$viewCount,
                       "viewCount_1217" = viewstats1217_sort$viewCount,
                       "diff_viewCount" = viewstats1217_sort$viewCount - viewstats1212_sort$viewCount,
                       "title_name_1212" = str_sub(as.character(viewstats1212_sort$title[]), -3,-1))

viewstat$title_name_1212[28] = "Ðì¾V"
viewstat$title_name_1212[31] = "ˆÑÅæÂ"
viewstat$title_name_1212[32] = "ˆÐÄè¤"
viewstat$title_name_1212[39] = "îëh"
viewstat$title_name_1212[43] = "ßBÒÀ"
viewstat$title_name_1212[51] = "¸µ –½¡"

viewstat <- viewstat[order(viewstat[,5], decreasing = TRUE),]

#viewstat$diff_viewCount <- factor(viewstat$diff_viewCount, levels = rev(unique(viewstat$diff_viewCount)))

#viewstat$diff_viewCount1 <- factor(viewstat$diff_viewCount, levels = viewstat$diff_viewCount)

for (i in 1:53){
  viewstat$title_name_1212[i] = paste0(63-i, viewstat$title_name_1212[i])
  
}
for (i in 54:62){
  viewstat$title_name_1212[i] = paste0("0", 63-i, viewstat$title_name_1212[i])
  
}

plot1 <- ggplot(viewstat,
                aes(x= viewstat[,6],
                    y= viewstat[,5],
                    # Color of the plot depend on column 2
                    fill= viewstat[,5]))

plot2 <- plot1 + geom_bar(stat="identity", width = 0.2) +
  labs(x='Name', y='viewCount', title='YaoWenChannelStats') + coord_flip()
plot2

# viewstat %>%
#   mutate(name = fct_reorder(title_name_1212, desc(diff_viewCount))) %>%
#   ggplot( aes(x=title_name_1212, y=diff_viewCount)) +
#   geom_bar(stat="identity", fill="#f68060", alpha=.6, width=.4) +
#   coord_flip() +
#   xlab("") +
#   theme_bw()

