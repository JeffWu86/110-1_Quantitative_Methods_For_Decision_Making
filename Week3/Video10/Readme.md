# Week 3

## Video 10

#### Subsetting Data Using Square Brackets in R

```R
# Import the LungCapData.txt as LungCapData first
> LungCapData <- read.delim("./LungCapData.txt", stringsAsFactors=TRUE)

# Review
> dim(LungCapData)
[1] 725   6
> length(Age)
[1] 725
> Age[11:14]
[1] 19 17 12 10
> LungCapData[11:14, ]
   LungCap Age Height Smoke Gender Caesarean
11  11.500  19   76.4    no   male       yes
12  10.925  17   71.7    no   male        no
13   6.525  12   57.5    no   male        no
14   6.000  10   61.1    no female        no


# Calculate the mean age but only for females
> mean(Age[Gender=="female"])
[1] 12.44972

# = (equal sign) is to assign values to objects
# == (double equal sign) is used to represent the equality in a mathemaical sense

# Store all the female data as FemData, and male data as MaleData
> FemData <- LungCapData[Gender=="female", ]
> MaleData <- LungCapData[Gender=="male", ]

# Check
> dim(FemData)
[1] 358   6
> dim(MaleData)
[1] 367   6
> summary(Gender)
female   male 
   358    367

# Pull out data for male who are over 15 years old
> MaleOver15 <- LungCapData[Gender=="male" & Age>15, ]
```



---

Reference:

[Subsetting (Sort/Select) Data in R with Square Brackets | R Tutorial 1.9| MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=10)

---

