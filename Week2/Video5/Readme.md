# Week 2

## Video 5

#### Importing Data from Excel into R (both .csv and .txt files)

```R
# Save the data file as comma separated value (.csv) or tab delimited text file (.txt)
# The ExcelDataCSV.csv file will open in Excel by default
# We can also open this file by any text editor that we like

# Make sure to set the working directory to your CSV file locate in
> setwd("XXXXX/Week2/Video5")
# Access the help menu by "help" command or question mark ? before the command
> help(read.csv)
> ?read.csv

# read.csv command
# First argument to secify is file path to find the file, or we can use "file.choose()" command to select the file by a popping up menu
# "header" argument setting to TRUE or T let R know that the first row of our dataset are variable names or headers.
# If first row does not contain variable names, set it to FALSE or F
> data1 <- read.csv(file.choose(), header=T)
# By hitting the "enter" or "return" key on our keyboard and select the file we wish to import
> data1
   LungCap Age Height Smoke Gender Caesarean
1    6.475   6   62.1    no   male        no
2   10.125  18   74.7   yes female        no
3    9.550  16   69.7    no female       yes
4   11.125  14   71.0    no   male        no
5    4.800   5   56.9    no   male        no
6    6.225  11   58.7    no female        no
7    4.950   8   63.3    no   male       yes
8    7.325  11   70.4    no   male        no
9    8.875  15   70.5    no   male        no
10   6.800  11   59.2    no   male        no
# The worksapce shows that there are 10 obsevations on 6 variables

# Use more generic "read.table" command
# Use the "sep" argumennt in quotations let R know that these are comma separated values
> data2 <- read.table(file.choose(), header=T, sep=",")
> data2
   LungCap Age Height Smoke Gender Caesarean
1    6.475   6   62.1    no   male        no
2   10.125  18   74.7   yes female        no
3    9.550  16   69.7    no female       yes
4   11.125  14   71.0    no   male        no
5    4.800   5   56.9    no   male        no
6    6.225  11   58.7    no female        no
7    4.950   8   63.3    no   male       yes
8    7.325  11   70.4    no   male        no
9    8.875  15   70.5    no   male        no
10   6.800  11   59.2    no   male        no

# The ExcelDataTAB.txt file is a tab delimited text file
# Use "read.delim" command in R to import a tab-delimited file
> data3 <- read.delim(file.choose(), header=T)
> data3
   LungCap Age Height Smoke Gender Caesarean
1    6.475   6   62.1    no   male        no
2   10.125  18   74.7   yes female        no
3    9.550  16   69.7    no female       yes
4   11.125  14   71.0    no   male        no
5    4.800   5   56.9    no   male        no
6    6.225  11   58.7    no female        no
7    4.950   8   63.3    no   male       yes
8    7.325  11   70.4    no   male        no
9    8.875  15   70.5    no   male        no
10   6.800  11   59.2    no   male        no
# Use more generic "read.table" command
# Use the "sep" argumennt equal to back-slash t (\t) let R know that these are tab-delimited file
> data4 <- read.table(file.choose(), header=T, sep="\t")
> data4
   LungCap Age Height Smoke Gender Caesarean
1    6.475   6   62.1    no   male        no
2   10.125  18   74.7   yes female        no
3    9.550  16   69.7    no female       yes
4   11.125  14   71.0    no   male        no
5    4.800   5   56.9    no   male        no
6    6.225  11   58.7    no female        no
7    4.950   8   63.3    no   male       yes
8    7.325  11   70.4    no   male        no
9    8.875  15   70.5    no   male        no
10   6.800  11   59.2    no   male        no
```



---

Reference:

[Import Data, Copy Data from Excel to R CSV & TXT Files | R Tutorial 1.5 | MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=5)

---

