# Video 1 for R08943016

rm(list = ls()) # Remove all the variables

# Make sure that you had installed the whole tidyverse:package
# install.packages("tidyverse")
# Alternatively, install just dplyr:
# install.packages("dplyr")

# Load the library
library(dplyr)


# We will be using my_basket data to depict the example of ntile() function.
my_basket = data.frame(ITEM_GROUP = c("Fruit","Fruit","Fruit","Fruit","Fruit","Vegetable","Vegetable","Vegetable","Vegetable","Dairy","Dairy","Dairy","Dairy","Dairy"), 
                       ITEM_NAME = c("Apple","Banana","Orange","Mango","Papaya","Carrot","Potato","Brinjal","Raddish","Milk","Curd","Cheese","Milk","Paneer"),
                       Price = c(100,80,80,90,65,70,60,70,25,60,40,35,50,NA),
                       Tax = c(2,4,5,6,2,3,5,1,3,4,5,6,4,NA))
my_basket

my_basket = my_basket[order(my_basket[,3]),]
my_basket

# percent_rank(): a number between 0 and 1 computed by rescaling min_rank to [0, 1]
basket_0 = mutate(my_basket, "percent_rank" = percent_rank(my_basket$Price))
basket_0

basket_0 = mutate(my_basket, "percent_rank" = round(percent_rank(my_basket$Price), 2))
basket_0

# cume_dist(): a cumulative distribution function.
# Proportion of all values less than or equal to the current rank.
basket_1 = mutate(my_basket, "cume_dist" = cume_dist(my_basket$Price))
basket_1

basket_1 = mutate(my_basket, "cume_dist" = round(cume_dist(my_basket$Price), 2))
basket_1

# ntile(): a rough rank, which breaks the input vector into n buckets.
# The size of the buckets may differ by up to one, larger buckets have lower rank.
basket_2 = mutate(my_basket, "ntile_with_4" = ntile(my_basket$Price,4))
basket_2

basket_3 = mutate(my_basket, "ntile_with_4_desc" = ntile(desc(my_basket$Price),4))
basket_3

# ntile with rank 2
basket_4 = mutate(my_basket, "ntile_with_2" = ntile(my_basket$Price,2))
basket_4


# dplyr::if_else
# Compared to the base ifelse(), this function is more strict.
# It checks that true and false are the same type.
# This strictness makes the output type more predictable, and makes it somewhat faster.
my_basket %>% mutate("Price_band" = if_else(Price > 70, "High", "Low"))
my_basket %>% mutate("Price_band" = if_else(Price > 70, "High", "Low", "Missing"))

# What if we want multiple if_else statements?
# Cascaded the if_else
my_basket %>% mutate("Price_band" = if_else(Price > 70, "High", 
                                          if_else(Price > 50, "Medium", "Low"), "Missing"))


x = 1:15
case_when(
  x %% 6 == 0 ~ paste(as.character(x), "is a multiple of 2 and 3"),
  x %% 2 == 0 ~ paste(as.character(x), "is a multiple of 2"),
  x %% 3 == 0 ~ paste(as.character(x), "is a multiple of 3"),
  TRUE ~ as.character(x)
)

# dplyr::case_when
# This function allows you to vectorise multiple if_else() statements
my_basket %>% mutate(Price_band = case_when(
  Price > 70 ~ "High", 
  Price > 50 ~ "Medium",
  is.na(Price) ~ "Missing",
  TRUE ~ "Low"))



# Practice time
MRT_data <- read.csv(file=paste0(getwd(), "/MRT_data_2021.csv"), header=T)
MRT_data[c(1:5,115:119),-c(5:20)]
MRT_data = mutate(MRT_data, "Avg" = round((Avg_I+Avg_O)/2,0))
MRT_data[c(1:5,115:119),-c(5:21)]

MRT_analysis = MRT_data[,c(1:2,27)]
MRT_analysis[c(1:5,115:119),]

# Q1. Show the percent rank of "Avg" with 2 floating point in each station
Q1 <- mutate(MRT_analysis, "percent_rank(%)" = round(percent_rank(MRT_analysis$Avg)*100,2))
Q1[c(1:5,115:119),]

# Q2. Sorted the Q1 answer "Avg" in decreasing order 
Q2 <- Q1[order(Q1[,3], decreasing = TRUE),]
Q2[c(1:5,115:119),]

# Q3. Add the ntile with 100 of "Avg" in each station from Q2
Q3 <- mutate(Q2, "ntile" = ntile(Q2$Avg,100))
Q3[c(1:5,115:119),]

# Q4. Show the cume_dist of "Avg" with 2 floating point in  each station
Q4 <- mutate(Q3, "cume_dist" = round(cume_dist(Q3$Avg),2))
Q4[c(1:5,115:119),]

# Q5. Use if_else to let Avg>15000 Large, Avg>5000 Medium, else Low
Q5 <- Q4 %>% mutate("Band1" = if_else(Q4$Avg>15000, "Large",
                                 (if_else(Q4$Avg>5000, "Medium", "Low"))))
Q5[c(1:5,115:119),]

# Other answer of Q5
Q5 <- mutate(Q4, "Band1" = if_else(Q4$Avg>15000, "Large",
                                   (if_else(Q4$Avg>5000, "Medium", "Low"))))
Q5[c(1:5,115:119),]

# Q6. Use case_when to let Avg>15000 Large, Avg>5000 Medium, else Low
Q6 <- Q5 %>% mutate("Band2" = case_when(
  Q5$Avg>15000 ~ "Large", 
  Q5$Avg>5000 ~ "Medium", 
  TRUE ~ "Low"))
Q6[c(1:5,115:119),]

# Other answer of Q6
Q6 <- mutate(Q5, "Band2" = case_when(
  Q5$Avg>15000 ~ "Large", 
  Q5$Avg>5000 ~ "Medium", 
  TRUE ~ "Low"))
Q6[c(1:5,115:119),]

