#Benchmarking 11/19 
#Benchmarking between homework and homework1 

View(homework)
homework1=data.frame(Name=Names,From=Start,To=End)

#比對r data 
library(dplyr)
all_equal(homework,homework1,ignore_col_order=FALSE,ignore_row_order=FALSE,convert=FALSE)

