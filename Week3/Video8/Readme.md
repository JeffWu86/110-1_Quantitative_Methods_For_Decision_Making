# Week 3

## Video 8

#### Getting Started with Data in R, Part I

```R
# read.table
# Read the data into R and save it as "Data1"
# Specify the "path" to the file in quoatations
# Set "header" argument to TRUE letting R know that the first row of our data is headers or variables name
# Set "sep" argument letting R know how our observations are separated
# "\t" " " ","
> Data1 <- read.table(file="./LungCapData.txt", header=T, sep="\t")

# Or using the "file.choose" command to select the file
> Data2 <- read.table(file.choose(), header=T, sep="\t")

# Only RStudio Import Dataset
# Select Import Dataset -> From Text File -> Select File -> Drop-down Menu Select, Heading = Yes, Separator = Tab, Decimal = Period, Quote = Double quote
> LungCapData <- read.delim("./LungCapData.txt")

# Remove command
> rm(Data1)
> rm(Data2)

# dim command, let us know the dimensions of the data in R
> dim(LungCapData)
[1] 725   6

# head command, see the first six rows
> head(LungCapData)
  LungCap Age Height Smoke Gender Caesarean
1   6.475   6   62.1    no   male        no
2  10.125  18   74.7   yes female        no
3   9.550  16   69.7    no female       yes
4  11.125  14   71.0    no   male        no
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no

# tail command, see the last six rows
> tail(LungCapData)
    LungCap Age Height Smoke Gender Caesarean
720   7.325   9   66.3    no   male        no
721   5.725   9   56.0    no female        no
722   9.050  18   72.0   yes   male       yes
723   3.850  11   60.5   yes female        no
724   9.825  15   64.9    no female        no
725   7.100  10   67.7    no   male        no

# Review
> LungCapData[c(5,6,7,8,9),]
  LungCap Age Height Smoke Gender Caesarean
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
7   4.950   8   63.3    no   male       yes
8   7.325  11   70.4    no   male        no
9   8.875  15   70.5    no   male        no
> LungCapData[5:9,]
  LungCap Age Height Smoke Gender Caesarean
5   4.800   5   56.9    no   male        no
6   6.225  11   58.7    no female        no
7   4.950   8   63.3    no   male       yes
8   7.325  11   70.4    no   male        no
9   8.875  15   70.5    no   male        no
> LungCapData[-(4:722),]
    LungCap Age Height Smoke Gender Caesarean
1     6.475   6   62.1    no   male        no
2    10.125  18   74.7   yes female        no
3     9.550  16   69.7    no female       yes
723   3.850  11   60.5   yes female        no
724   9.825  15   64.9    no female        no
725   7.100  10   67.7    no   male        no

# Check the variable names using the "names" command
> names(LungCapData)
[1] "LungCap"   "Age"       "Height"    "Smoke"     "Gender"    "Caesarean"
```



---

Reference:

[Importing , Checking and Working with Data in R | R Tutorial 1.7 | MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=8)

---

