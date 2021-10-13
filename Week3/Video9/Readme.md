# Week 3

## Video 9

#### Working with Data in R, Part II

```R
# Import the LungCapData.txt as LungCapData first
> LungCapData <- read.delim("./LungCapData.txt", stringsAsFactors=TRUE)

# Using $ to extract variables from the object
> LungCapData$Age

# "mean" function
> mean(LungCapData$Age)
[1] 12.3269

# Attach data
# Pro: Attaching data by their name without $
# Con: Be overwritten more easily
> attach(LungCapData)
> mean(Age)
[1] 12.3269

# "detach" commmand
> detach(LungCapData)
> Age
Error: object 'Age' not found

# Checking the type of variable using the "class" command
> attach(LungCapData)
> names(LungCapData)
[1] "LungCap"   "Age"       "Height"    "Smoke"     "Gender"    "Caesarean"
> class(LungCap)
[1] "numeric"
> class(Age)
[1] "integer"
> class(Height)
[1] "numeric"
> class(Smoke)
[1] "factor"
> class(Gender)
[1] "factor"
> class(Caesarean)
[1] "factor"
# Note that if the Smoke, Gender and Caesarean shows character, it is caused by read.table command

# "levels" command to ask what the different levels or categories are for this factor
> levels(Smoke)
[1] "no"  "yes"
> levels(Gender)
[1] "female" "male"  
> levels(Gender)
[1] "female" "male"

# "summary" command
> summary(LungCapData)
    LungCap            Age            Height      Smoke        Gender    Caesarean
 Min.   : 0.507   Min.   : 3.00   Min.   :45.30   no :648   female:358   no :561  
 1st Qu.: 6.150   1st Qu.: 9.00   1st Qu.:59.90   yes: 77   male  :367   yes:164  
 Median : 8.000   Median :13.00   Median :65.40                                   
 Mean   : 7.863   Mean   :12.33   Mean   :64.84                                   
 3rd Qu.: 9.800   3rd Qu.:15.00   3rd Qu.:70.30                                   
 Max.   :14.675   Max.   :19.00   Max.   :81.80           

# Convert x to a cateogrical variable or a factor using "as.factor" command
> x <- c(0,1,1,1,0,0,0,0,0,0)
> class(x)
[1] "numeric"
> summary(x)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   0.00    0.00    0.00    0.30    0.75    1.00 
> x <- as.factor(x)
> class(x)
[1] "factor"
# Report frequency for factor
> summary(x)
0 1 
7 3 
```



---

Reference:

[Working with Variables and Data in R | R Tutorial 1.8 | MarinStatslectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=9)

---

