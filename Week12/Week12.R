# R08943016

rm(list = ls()) # Remove all the variables

#install.packages("dplyr")
#install.packages("jsonlite")
#install.packages("httr")

library("dplyr")
library("jsonlite")
library("httr")


post_number_url <- "https://io.adafruit.com/api/v2/r08943016/feeds/test1/data?x-aio-key=aio_eYqe75hWnfN3xFycUu551kaaFKtw"

postRespont <- httr::POST(post_number_url, body=list(value=250))
