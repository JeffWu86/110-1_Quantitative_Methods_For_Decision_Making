# Week 4

## Video 14

#### Installing Packages in R

```R
# "install.packages" command or using the menus within R to install packages
> help("install.packages")

# Example of installing "epiR" package
> install.packages("epiR")

# Leave it blank and R will return a menu of all packages available
> install.packages()

# load the libary of "epiR" package
> library(epiR)
載入需要的套件：survival
Package epiR 2.0.38 is loaded
Type help(epi.about) for summary information
Type browseVignettes(package = 'epiR') to learn how to use epiR for applied epidemiological analyses
# Need to load the library each R session that we would like to be able to use the package

# Click on CRAN on R website to download R or packages for R
# Select the mirror and enter it
# In leftside, Software -> Packages -> Table of availabe packages...

# help for a specific package
> help(package=epiR)

# Remove a package
> remove.packages("epiR")

# Or using GUI to install and uninstall packages
# Tools -> Install Packages
# Also Check for Package Updates...
# Specify the packages we want to install
```



---

Reference:

[How to Install Packages in R | R Tutorial 1.13 | MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=14)

[Complete list of R packages](https://www.r-project.org/)

---

