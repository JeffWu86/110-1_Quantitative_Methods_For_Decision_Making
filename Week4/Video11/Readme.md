# Week 4

## Video 11

#### Logic Statements, and a Few Other Random But Useful Commands in R

```R
# Import the LungCapData.txt as LungCapData first
> LungCapData <- read.delim("./LungCapData.txt", stringsAsFactors=TRUE)
> LungCapData[1:5, ]
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no

# "logic" command
> Age[1:5]
[1]  6 18 16 14  5
> temp <- Age[1:5] > 15
> temp
[1] FALSE  TRUE  TRUE FALSE FALSE

# "as.numeric()" command
> temp2 <- as.numeric(Age[1:5]>15)
> temp2
[1] 0 1 1 0 0

# multiple logical statements
> FemSmoke <- Gender=="female" & Smoke=="yes"
> FemSmoke[1:5]
[1] FALSE  TRUE FALSE FALSE FALSE

# Attach vectors or matrices in a colummn-wise using "cbind" command as well as row-wise using "rbind" command
> MoreData <- cbind(LungCapData, FemSmoke)
> MoreData[1:5, ]
  LungCap Age Height Smoke Gender Caesarean FemSmoke
1   6.475   6   62.1    no   male        no    FALSE
2  10.125  18   74.7   yes female        no     TRUE
3   9.550  16   69.7    no female       yes    FALSE
4  11.125  14   71.0    no   male        no    FALSE
5   4.800   5   56.9    no   male        no    FALSE

# Remove all objects in command
> rm(list=ls())
```



---

Reference:

[Logic Statements (TRUE/FALSE), cbind and rbind Functions in R | R Tutorial 1.10| MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=11)

---

