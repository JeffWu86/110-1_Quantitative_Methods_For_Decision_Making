# Week 12

## Lecture

Change System Language to Simplified Chinese

Open C:\Program Files\R\R-4.1.1\etc\Rprofile.site

Add comments  below and save it

```R
## To change the default locale of an R session, put the following
## commands in the file C:\Program Files\R\R-4.1.1\etc\Rprofile.site

.First = function(){
  Sys.setlocale(locale="Chinese")
}
.Last=function(){
  # put here the commands you would like R to rum when the session is ended.
}
##
```



Using adafruit

```R
> rm(list = ls()) # Remove all the variables

#install.packages("dplyr")
#install.packages("jsonlite")
#install.packages("httr")

> library("dplyr")
> library("jsonlite")
> library("httr")


> post_number_url <- "https://io.adafruit.com/api/v2/r08943016/feeds/test1/data?x-aio-key=aio_eYqe75hWnfN3xFycUu551kaaFKtw"

> postRespont <- httr::POST(post_number_url, body=list(value=250))
```

[期末影片填寫](https://docs.google.com/spreadsheets/d/1QAPIPkEPERA1izIgaRFcOGYTLpyoeHq-D-DK4UstViI/edit#gid=0)

