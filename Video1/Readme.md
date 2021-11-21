# Video 1

```R
# Video 1 for R08943016

> rm(list = ls()) # Remove all the variables

# Make sure that you had installed the whole tidyverse:package
# > install.packages("tidyverse")
# Alternatively, install just dplyr:
# > install.packages("dplyr")

# Load the library
> library(dplyr)


# We will be using my_basket data to depict the example of ntile() function.
> my_basket = data.frame(ITEM_GROUP = c("Fruit","Fruit","Fruit","Fruit","Fruit","Vegetable","Vegetable",
                                      "Vegetable","Vegetable","Dairy","Dairy","Dairy","Dairy","Dairy"), 
                       ITEM_NAME = c("Apple","Banana","Orange","Mango","Papaya","Carrot","Potato",
                                     "Brinjal","Raddish","Milk","Curd","Cheese","Milk","Paneer"),
                       Price = c(100,80,80,90,65,70,60,70,25,60,40,35,50,NA),
                       Tax = c(2,4,5,6,2,3,5,1,3,4,5,6,4,NA))
> my_basket
   ITEM_GROUP ITEM_NAME Price Tax
1       Fruit     Apple   100   2
2       Fruit    Banana    80   4
3       Fruit    Orange    80   5
4       Fruit     Mango    90   6
5       Fruit    Papaya    65   2
6   Vegetable    Carrot    70   3
7   Vegetable    Potato    60   5
8   Vegetable   Brinjal    70   1
9   Vegetable   Raddish    25   3
10      Dairy      Milk    60   4
11      Dairy      Curd    40   5
12      Dairy    Cheese    35   6
13      Dairy      Milk    50   4
14      Dairy    Paneer    NA  NA

> my_basket = my_basket[order(my_basket[,3]),]
> my_basket
   ITEM_GROUP ITEM_NAME Price Tax
9   Vegetable   Raddish    25   3
12      Dairy    Cheese    35   6
11      Dairy      Curd    40   5
13      Dairy      Milk    50   4
7   Vegetable    Potato    60   5
10      Dairy      Milk    60   4
5       Fruit    Papaya    65   2
6   Vegetable    Carrot    70   3
8   Vegetable   Brinjal    70   1
2       Fruit    Banana    80   4
3       Fruit    Orange    80   5
4       Fruit     Mango    90   6
1       Fruit     Apple   100   2
14      Dairy    Paneer    NA  NA

# percent_rank(): a number between 0 and 1 computed by rescaling min_rank to [0, 1]
> basket_0 = mutate(my_basket, "percent_rank" = percent_rank(my_basket$Price))
> basket_0
   ITEM_GROUP ITEM_NAME Price Tax percent_rank
9   Vegetable   Raddish    25   3   0.00000000
12      Dairy    Cheese    35   6   0.08333333
11      Dairy      Curd    40   5   0.16666667
13      Dairy      Milk    50   4   0.25000000
7   Vegetable    Potato    60   5   0.33333333
10      Dairy      Milk    60   4   0.33333333
5       Fruit    Papaya    65   2   0.50000000
6   Vegetable    Carrot    70   3   0.58333333
8   Vegetable   Brinjal    70   1   0.58333333
2       Fruit    Banana    80   4   0.75000000
3       Fruit    Orange    80   5   0.75000000
4       Fruit     Mango    90   6   0.91666667
1       Fruit     Apple   100   2   1.00000000
14      Dairy    Paneer    NA  NA           NA

> basket_0 = mutate(my_basket, "percent_rank" = round(percent_rank(my_basket$Price), 2))
> basket_0
   ITEM_GROUP ITEM_NAME Price Tax percent_rank
9   Vegetable   Raddish    25   3         0.00
12      Dairy    Cheese    35   6         0.08
11      Dairy      Curd    40   5         0.17
13      Dairy      Milk    50   4         0.25
7   Vegetable    Potato    60   5         0.33
10      Dairy      Milk    60   4         0.33
5       Fruit    Papaya    65   2         0.50
6   Vegetable    Carrot    70   3         0.58
8   Vegetable   Brinjal    70   1         0.58
2       Fruit    Banana    80   4         0.75
3       Fruit    Orange    80   5         0.75
4       Fruit     Mango    90   6         0.92
1       Fruit     Apple   100   2         1.00
14      Dairy    Paneer    NA  NA           NA

# cume_dist(): a cumulative distribution function.
# Proportion of all values less than or equal to the current rank.
> basket_1 = mutate(my_basket, "cume_rank" = cume_dist(my_basket$Price))
> basket_1
   ITEM_GROUP ITEM_NAME Price Tax  cume_rank
9   Vegetable   Raddish    25   3 0.07692308
12      Dairy    Cheese    35   6 0.15384615
11      Dairy      Curd    40   5 0.23076923
13      Dairy      Milk    50   4 0.30769231
7   Vegetable    Potato    60   5 0.46153846
10      Dairy      Milk    60   4 0.46153846
5       Fruit    Papaya    65   2 0.53846154
6   Vegetable    Carrot    70   3 0.69230769
8   Vegetable   Brinjal    70   1 0.69230769
2       Fruit    Banana    80   4 0.84615385
3       Fruit    Orange    80   5 0.84615385
4       Fruit     Mango    90   6 0.92307692
1       Fruit     Apple   100   2 1.00000000
14      Dairy    Paneer    NA  NA         NA

> basket_1 = mutate(my_basket, "cume_rank" = round(cume_dist(my_basket$Price), 2))
> basket_1
   ITEM_GROUP ITEM_NAME Price Tax cume_rank
9   Vegetable   Raddish    25   3      0.08
12      Dairy    Cheese    35   6      0.15
11      Dairy      Curd    40   5      0.23
13      Dairy      Milk    50   4      0.31
7   Vegetable    Potato    60   5      0.46
10      Dairy      Milk    60   4      0.46
5       Fruit    Papaya    65   2      0.54
6   Vegetable    Carrot    70   3      0.69
8   Vegetable   Brinjal    70   1      0.69
2       Fruit    Banana    80   4      0.85
3       Fruit    Orange    80   5      0.85
4       Fruit     Mango    90   6      0.92
1       Fruit     Apple   100   2      1.00
14      Dairy    Paneer    NA  NA        NA

# ntile(): a rough rank, which breaks the input vector into n buckets.
# The size of the buckets may differ by up to one, larger buckets have lower rank.
> basket_2 = mutate(my_basket, "ntile_with_4" = ntile(my_basket$Price,4))
> basket_2
   ITEM_GROUP ITEM_NAME Price Tax ntile_with_4
9   Vegetable   Raddish    25   3            1
12      Dairy    Cheese    35   6            1
11      Dairy      Curd    40   5            1
13      Dairy      Milk    50   4            1
7   Vegetable    Potato    60   5            2
10      Dairy      Milk    60   4            2
5       Fruit    Papaya    65   2            2
6   Vegetable    Carrot    70   3            3
8   Vegetable   Brinjal    70   1            3
2       Fruit    Banana    80   4            3
3       Fruit    Orange    80   5            4
4       Fruit     Mango    90   6            4
1       Fruit     Apple   100   2            4
14      Dairy    Paneer    NA  NA           NA

> basket_3 = mutate(my_basket, "ntile_with_4_desc" = ntile(desc(my_basket$Price),4))
> basket_3
   ITEM_GROUP ITEM_NAME Price Tax ntile_with_4_desc
9   Vegetable   Raddish    25   3                 4
12      Dairy    Cheese    35   6                 4
11      Dairy      Curd    40   5                 4
13      Dairy      Milk    50   4                 3
7   Vegetable    Potato    60   5                 3
10      Dairy      Milk    60   4                 3
5       Fruit    Papaya    65   2                 2
6   Vegetable    Carrot    70   3                 2
8   Vegetable   Brinjal    70   1                 2
2       Fruit    Banana    80   4                 1
3       Fruit    Orange    80   5                 1
4       Fruit     Mango    90   6                 1
1       Fruit     Apple   100   2                 1
14      Dairy    Paneer    NA  NA                NA

# ntile with rank 2
> basket_4 = mutate(my_basket, "ntile_with_2" = ntile(my_basket$Price,2))
> basket_4
   ITEM_GROUP ITEM_NAME Price Tax ntile_with_2
9   Vegetable   Raddish    25   3            1
12      Dairy    Cheese    35   6            1
11      Dairy      Curd    40   5            1
13      Dairy      Milk    50   4            1
7   Vegetable    Potato    60   5            1
10      Dairy      Milk    60   4            1
5       Fruit    Papaya    65   2            1
6   Vegetable    Carrot    70   3            2
8   Vegetable   Brinjal    70   1            2
2       Fruit    Banana    80   4            2
3       Fruit    Orange    80   5            2
4       Fruit     Mango    90   6            2
1       Fruit     Apple   100   2            2
14      Dairy    Paneer    NA  NA           NA


# dplyr::if_else
# Compared to the base ifelse(), this function is more strict.
# It checks that true and false are the same type.
# This strictness makes the output type more predictable, and makes it somewhat faster.
> my_basket %>% mutate(Price_band = if_else(Price > 70, "High", "Low"))
   ITEM_GROUP ITEM_NAME Price Tax Price_band
9   Vegetable   Raddish    25   3        Low
12      Dairy    Cheese    35   6        Low
11      Dairy      Curd    40   5        Low
13      Dairy      Milk    50   4        Low
7   Vegetable    Potato    60   5        Low
10      Dairy      Milk    60   4        Low
5       Fruit    Papaya    65   2        Low
6   Vegetable    Carrot    70   3        Low
8   Vegetable   Brinjal    70   1        Low
2       Fruit    Banana    80   4       High
3       Fruit    Orange    80   5       High
4       Fruit     Mango    90   6       High
1       Fruit     Apple   100   2       High
14      Dairy    Paneer    NA  NA       <NA>

> my_basket %>% mutate(Price_band = if_else(Price > 70, "High", "Low", "Missing"))
   ITEM_GROUP ITEM_NAME Price Tax Price_band
9   Vegetable   Raddish    25   3        Low
12      Dairy    Cheese    35   6        Low
11      Dairy      Curd    40   5        Low
13      Dairy      Milk    50   4        Low
7   Vegetable    Potato    60   5        Low
10      Dairy      Milk    60   4        Low
5       Fruit    Papaya    65   2        Low
6   Vegetable    Carrot    70   3        Low
8   Vegetable   Brinjal    70   1        Low
2       Fruit    Banana    80   4       High
3       Fruit    Orange    80   5       High
4       Fruit     Mango    90   6       High
1       Fruit     Apple   100   2       High
14      Dairy    Paneer    NA  NA    Missing

# What if we want multiple if_else statements?
# Cascaded the if_else
> my_basket %>% mutate(Price_band = if_else(Price > 70, "High", 
                                            if_else(Price > 50, "Medium", "Low"), "Missing"))
   ITEM_GROUP ITEM_NAME Price Tax Price_band
9   Vegetable   Raddish    25   3        Low
12      Dairy    Cheese    35   6        Low
11      Dairy      Curd    40   5        Low
13      Dairy      Milk    50   4        Low
7   Vegetable    Potato    60   5     Medium
10      Dairy      Milk    60   4     Medium
5       Fruit    Papaya    65   2     Medium
6   Vegetable    Carrot    70   3     Medium
8   Vegetable   Brinjal    70   1     Medium
2       Fruit    Banana    80   4       High
3       Fruit    Orange    80   5       High
4       Fruit     Mango    90   6       High
1       Fruit     Apple   100   2       High
14      Dairy    Paneer    NA  NA    Missing

> x = 1:15
> case_when(
    x %% 6 == 0 ~ paste(as.character(x), "is a multiple of 2 and 3"),
    x %% 2 == 0 ~ paste(as.character(x), "is a multiple of 2"),
    x %% 3 == 0 ~ paste(as.character(x), "is a multiple of 3"),
    TRUE ~ as.character(x))
 [1] "1"                           "2 is a multiple of 2"        "3 is a multiple of 3"       
 [4] "4 is a multiple of 2"        "5"                           "6 is a multiple of 2 and 3" 
 [7] "7"                           "8 is a multiple of 2"        "9 is a multiple of 3"       
[10] "10 is a multiple of 2"       "11"                          "12 is a multiple of 2 and 3"
[13] "13"                          "14 is a multiple of 2"       "15 is a multiple of 3"   

# dplyr::case_when
# This function allows you to vectorise multiple if_else() statements
> my_basket %>% mutate(Price_band = case_when(
  	Price > 70 ~ "High", 
  	Price > 50 ~ "Medium",
  	is.na(Price) ~ "Missing",
  	TRUE ~ "Low"))
   ITEM_GROUP ITEM_NAME Price Tax Price_band
9   Vegetable   Raddish    25   3        Low
12      Dairy    Cheese    35   6        Low
11      Dairy      Curd    40   5        Low
13      Dairy      Milk    50   4        Low
7   Vegetable    Potato    60   5     Medium
10      Dairy      Milk    60   4     Medium
5       Fruit    Papaya    65   2     Medium
6   Vegetable    Carrot    70   3     Medium
8   Vegetable   Brinjal    70   1     Medium
2       Fruit    Banana    80   4       High
3       Fruit    Orange    80   5       High
4       Fruit     Mango    90   6       High
1       Fruit     Apple   100   2       High
14      Dairy    Paneer    NA  NA    Missing

# Practice time
> MRT_data <- read.csv(file=paste0(getwd(), "/MRT_data_2021.csv"), header=T)
> MRT_data[c(1:5,115:119),-c(5:20)]
         Station Station_No Jan_O Jan_I Oct_O Oct_I  Sum_O  Sum_I Avg_O Avg_I   Avg
1           頂埔       BL01  7918  8429  6453  6743  58767  62128  5877  6213  6045
2           永寧       BL02 11871 11409  9531  9294  87131  84035  8713  8404  8558
3           土城       BL03  7065  7131  5867  5963  52755  53536  5276  5354  5315
4           海山       BL04 20199 20006 17113 16787 149291 147250 14929 14725 14827
5       亞東醫院       BL05 19837 21734 17095 18646 149137 163266 14914 16327 15620
115         板新        Y15  2467  2455  2135  2129  18586  18390  1859  1839  1849
116        Y板橋        Y16  7373  7531  6400  6524  54304  55299  5430  5530  5480
117     新埔民生        Y17  2211  2061  1873  1701  16147  14803  1615  1480  1548
118         幸福        Y19  3488  3263  2986  2731  26292  24416  2629  2442  2536
119 新北產業園區        Y20  3694  3638  3281  3216  28403  27960  2840  2796  2818

> MRT_data = mutate(MRT_data, "Avg" = round((Avg_I+Avg_O)/2,0))
> MRT_data[c(1:5,115:119),-c(5:21)]
         Station Station_No Jan_O Jan_I Oct_I  Sum_O  Sum_I Avg_O Avg_I   Avg
1           頂埔       BL01  7918  8429  6743  58767  62128  5877  6213  6045
2           永寧       BL02 11871 11409  9294  87131  84035  8713  8404  8558
3           土城       BL03  7065  7131  5963  52755  53536  5276  5354  5315
4           海山       BL04 20199 20006 16787 149291 147250 14929 14725 14827
5       亞東醫院       BL05 19837 21734 18646 149137 163266 14914 16327 15620
115         板新        Y15  2467  2455  2129  18586  18390  1859  1839  1849
116        Y板橋        Y16  7373  7531  6524  54304  55299  5430  5530  5480
117     新埔民生        Y17  2211  2061  1701  16147  14803  1615  1480  1548
118         幸福        Y19  3488  3263  2731  26292  24416  2629  2442  2536
119 新北產業園區        Y20  3694  3638  3216  28403  27960  2840  2796  2818

> MRT_analysis = MRT_data[,c(1:2,27)]
> MRT_analysis[c(1:5,115:119),]
         Station Station_No   Avg
1           頂埔       BL01  6045
2           永寧       BL02  8558
3           土城       BL03  5315
4           海山       BL04 14827
5       亞東醫院       BL05 15620
115         板新        Y15  1849
116        Y板橋        Y16  5480
117     新埔民生        Y17  1548
118         幸福        Y19  2536
119 新北產業園區        Y20  2818

# Q1. Show the percent rank of "Avg" with 2 floating point in each station
> Q1 <- mutate(MRT_analysis, "percent_rank(%)" = round(percent_rank(MRT_analysis$Avg)*100,2))
> Q1[c(1:5,115:119),]
         Station Station_No   Avg percent_rank(%)
1           頂埔       BL01  6045           28.81
2           永寧       BL02  8558           48.31
3           土城       BL03  5315           23.73
4           海山       BL04 14827           70.34
5       亞東醫院       BL05 15620           75.42
115         板新        Y15  1849            4.24
116        Y板橋        Y16  5480           24.58
117     新埔民生        Y17  1548            1.69
118         幸福        Y19  2536           10.17
119 新北產業園區        Y20  2818           12.71

# Q2. Sorted the Q1 answer "Avg" in decreasing order 
> Q2 <- Q1[order(Q1[,4], decreasing = TRUE),]
> Q2[c(1:5,115:119),]
     Station Station_No   Avg percent_rank(%)
89  台北車站        R10 83084          100.00
16    市政府       BL17 40142           99.15
11      西門       BL11 39528           98.31
30  忠孝復興       BR10 28691           97.46
90      中山        R11 28454           96.61
110   秀朗橋        Y09  1706            3.39
23  萬芳社區       BR03  1581            2.54
117 新埔民生        Y17  1548            1.69
113     橋和        Y13  1461            0.85
109   十四張        Y08   884            0.00

# Q3. Add the ntile with 100 of "Avg" in each station from Q2
> Q3 <- mutate(Q2, "ntile" = ntile(Q2$Avg,100))
> Q3[c(1:5,115:119),]
     Station Station_No   Avg percent_rank(%) ntile
89  台北車站        R10 83084          100.00   100
16    市政府       BL17 40142           99.15    99
11      西門       BL11 39528           98.31    98
30  忠孝復興       BR10 28691           97.46    97
90      中山        R11 28454           96.61    96
110   秀朗橋        Y09  1706            3.39     3
23  萬芳社區       BR03  1581            2.54     2
117 新埔民生        Y17  1548            1.69     2
113     橋和        Y13  1461            0.85     1
109   十四張        Y08   884            0.00     1

# Q4. Show the cume_dist of "Avg" with 2 floating point in  each station
> Q4 <- mutate(Q3, "cume_dist" = round(cume_dist(Q3$Avg),2))
> Q4[c(1:5,115:119),]
     Station Station_No   Avg percent_rank(%) ntile cume_dist
89  台北車站        R10 83084          100.00   100      1.00
16    市政府       BL17 40142           99.15    99      0.99
11      西門       BL11 39528           98.31    98      0.98
30  忠孝復興       BR10 28691           97.46    97      0.97
90      中山        R11 28454           96.61    96      0.97
110   秀朗橋        Y09  1706            3.39     3      0.04
23  萬芳社區       BR03  1581            2.54     2      0.03
117 新埔民生        Y17  1548            1.69     2      0.03
113     橋和        Y13  1461            0.85     1      0.02
109   十四張        Y08   884            0.00     1      0.01

# Q5. Use if_else to let Avg>15000 Large, Avg>5000 Medium, else Low
> Q5 <- Q4 %>% mutate("Band1" = if_else(Q4$Avg>15000, "Large",
                                        (if_else(Q4$Avg>5000, "Medium", "Low"))))
> Q5[c(1:5,115:119),]
     Station Station_No   Avg percent_rank(%) ntile cume_dist Band1
89  台北車站        R10 83084          100.00   100      1.00 Large
16    市政府       BL17 40142           99.15    99      0.99 Large
11      西門       BL11 39528           98.31    98      0.98 Large
30  忠孝復興       BR10 28691           97.46    97      0.97 Large
90      中山        R11 28454           96.61    96      0.97 Large
110   秀朗橋        Y09  1706            3.39     3      0.04   Low
23  萬芳社區       BR03  1581            2.54     2      0.03   Low
117 新埔民生        Y17  1548            1.69     2      0.03   Low
113     橋和        Y13  1461            0.85     1      0.02   Low
109   十四張        Y08   884            0.00     1      0.01   Low

# Other answer of Q5
> Q5 <- mutate(Q4, "Band1" = if_else(Q4$Avg>15000, "Large",
                                     (if_else(Q4$Avg>5000, "Medium", "Low"))))
> Q5[c(1:5,115:119),]
     Station Station_No   Avg percent_rank(%) ntile cume_dist Band1
89  台北車站        R10 83084          100.00   100      1.00 Large
16    市政府       BL17 40142           99.15    99      0.99 Large
11      西門       BL11 39528           98.31    98      0.98 Large
30  忠孝復興       BR10 28691           97.46    97      0.97 Large
90      中山        R11 28454           96.61    96      0.97 Large
110   秀朗橋        Y09  1706            3.39     3      0.04   Low
23  萬芳社區       BR03  1581            2.54     2      0.03   Low
117 新埔民生        Y17  1548            1.69     2      0.03   Low
113     橋和        Y13  1461            0.85     1      0.02   Low
109   十四張        Y08   884            0.00     1      0.01   Low

# Q6. Use case_when to let Avg>15000 Large, Avg>5000 Medium, else Low
> Q6 <- Q5 %>% mutate("Band2" = case_when(
    Q5$Avg>15000 ~ "Large",
    Q5$Avg>5000 ~ "Medium",
    TRUE ~ "Low"))
> Q6[c(1:5,115:119),]
     Station Station_No   Avg percent_rank(%) ntile cume_dist Band1 Band2
89  台北車站        R10 83084          100.00   100      1.00 Large Large
16    市政府       BL17 40142           99.15    99      0.99 Large Large
11      西門       BL11 39528           98.31    98      0.98 Large Large
30  忠孝復興       BR10 28691           97.46    97      0.97 Large Large
90      中山        R11 28454           96.61    96      0.97 Large Large
110   秀朗橋        Y09  1706            3.39     3      0.04   Low   Low
23  萬芳社區       BR03  1581            2.54     2      0.03   Low   Low
117 新埔民生        Y17  1548            1.69     2      0.03   Low   Low
113     橋和        Y13  1461            0.85     1      0.02   Low   Low
109   十四張        Y08   884            0.00     1      0.01   Low   Low

# Other answer of Q6
> Q6 <- mutate(Q5, "Band2" = case_when(
    Q5$Avg>15000 ~ "Large", 
  	Q5$Avg>5000 ~ "Medium", 
  	TRUE ~ "Low"))
> Q6[c(1:5,115:119),]
     Station Station_No   Avg percent_rank(%) ntile cume_dist Band1 Band2
89  台北車站        R10 83084          100.00   100      1.00 Large Large
16    市政府       BL17 40142           99.15    99      0.99 Large Large
11      西門       BL11 39528           98.31    98      0.98 Large Large
30  忠孝復興       BR10 28691           97.46    97      0.97 Large Large
90      中山        R11 28454           96.61    96      0.97 Large Large
110   秀朗橋        Y09  1706            3.39     3      0.04   Low   Low
23  萬芳社區       BR03  1581            2.54     2      0.03   Low   Low
117 新埔民生        Y17  1548            1.69     2      0.03   Low   Low
113     橋和        Y13  1461            0.85     1      0.02   Low   Low
109   十四張        Y08   884            0.00     1      0.01   Low   Low
```

