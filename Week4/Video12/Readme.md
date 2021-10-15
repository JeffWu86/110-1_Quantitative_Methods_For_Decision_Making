# Week 4

## Video 12

#### Setting Up Your Working Directory in R

```R
# Import the LungCapData.txt as LungCapData first
> LungCapData <- read.delim("./LungCapData.txt", stringsAsFactors=TRUE)
> attach(LungCapData)

# "getwd" command
> getwd()

# "setwd" command
> setwd("../Video12")
# or save path in a variable
> projectWD <- "../Video12"
> setwd(projectWD)

# Session -> Set Working Directory -> Choose Directory
> MeanAge <- mean(Age)
> x <- c(1,2,3,4,5)
> y <- 14
> z = summary(LungCapData)

# "save.imgae" command save the current workspace image
# .Rdata let R know that this is a workspace image file
# Without specify the path, it will be saved in the current working directory
> save.image("FirstProject.Rdata")

# Another way to save the workspace image
# Session -> Save Workspace As...

# Same as rm(list=ls())
# Session -> Clear Workspace...

# Quit RStudio
> q()

# Reopen RStudio it is clear
> ls()
character(0)
> setwd("../Week4/Video12/")

# "load" command load previous workspace image
> load("FirstProject.Rdata")
> load(file.choose())
# Session -> Load Workspace...
```



---

Reference:

[Setting Up Working Directory in R  | R Tutorial 1.11 | MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=12)

---

