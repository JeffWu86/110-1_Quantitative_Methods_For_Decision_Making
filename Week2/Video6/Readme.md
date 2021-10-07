# Week 2

## Video 6

#### How to Import Excel file into R: Using RStudio readxl built-in package and menu

```R
# readxl package can import both .xlsx and .xls files
# This packages is pre-installed in RStudio

# Example 1:
# For the first worksheet
# Click File -> Import Dataset -> From Excel... or Click Import Dataset -> From Excel... in Environment workspace
# Enter the URL if we want to import data from the web or selec browse if we save the data in our local space
# ******* Make sure the file cannot put under Chinese folder name *******

# Change the "Name" in Import Options to what you want
# By default, R will open up the first worksheet, select the other worksheet if we wish in "Sheet" options
# "Range" option allows you to select certain rows or columns to import
# "Max Rows" option allows you to limit the number of rows of data that get imported
# "Skip" option allows you to skip rows on the import, setting this to 1 will skip the first row, setting this to 2 will skip the first two row and so on
# "NA" option is how we deal with missing values
# Tell R how what our coding is for missing value by filling that in here
# For example, fill in *** in "NA" will change the *** to NA
# Ticking "First Row as Names" box let R knows that our first row of our data set is the variable name
# Ticking "Open Data Viewer" gives us a data view once the data is imported in RStudio

# Notice that read Excel doesn't always get the variable types correct
# For example, the disease variable coded using ones and zeros for yes and no although this variable is actually a factor or categorical. Therefore, click on the little triangle in "Disease" column and change it to character
# Setting variable to "skip" is going to have our skip it or not import that variable when importing the data

# The "Code Preview" is the code that we would enter into the console in order to import the data from the command line.
> library(readxl)
> LungCapData <- read_excel("C:/Users/Jeff/R_test/Excel Data File.xlsx", 
+     sheet = "LungCapData", col_types = c("numeric", 
+         "skip", "numeric", "text", "text", 
+         "text", "text"), na = "***")
> View(LungCapData)

# Example 2:
# For the second worksheet
# "Range" option allows you to select certain cells to import
> library(readxl)
> OtherData <- read_excel("C:/Users/Jeff/R_test/Excel Data File.xlsx", 
+     sheet = "AnotherDataset", range = "B3:E11")
> View(OtherData)
```



---

Reference:

  [Importing/Reading Excel data into R using RStudio (readxl) | R Tutorial 1.5b | MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=6)

---

