

library(jsonlite)
library(dplyr)
library(httr)
#######################################################
## Get data  
#######################################################

my_url= "https://io.adafruit.com/api/v2/r08943016/feeds/test1/data?x-aio-key=aio_mHpr01qKo3Xvl0uJHLdX9DtP5zo¨A"

my_raw_result <- httr::GET(my_url)

str(my_raw_result)

str(my_raw_result$content)

my_content <- httr::content(my_raw_result, as='text')

str(my_content)

my_content_from_json <- jsonlite::fromJSON(my_content)

my_content_from_json

dplyr::glimpse(my_content_from_json)


#######################################################
## Post data
#######################################################
## Post a number
post_number_url <- "https://io.adafruit.com/api/v2/r08943016/feeds/test1/data?x-aio-key=aio_mHpr01qKo3Xvl0uJHLdX9DtP5zo4"

postResponse <- httr::POST(post_number_url, body=list(value=125))

## Post a text
post_text_url <- "https://io.adafruit.com/api/v2/r08943016/feeds/test1/data?x-aio-key=aio_mHpr01qKo3Xvl0uJHLdX9DtP5zo4"

postResponse <- httr::POST(post_text_url, body=list(value="very good"))













