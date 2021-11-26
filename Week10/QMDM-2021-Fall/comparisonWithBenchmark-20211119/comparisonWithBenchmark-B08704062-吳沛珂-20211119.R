library(stringr)
setwd("D:/R/Notes")
load("C:/Users/user/Downloads/homework-R08943016 (1).RData")
load("D:/R/homework-B08704062.RData")

homeworkMatrix = as.matrix(homework, nrow = 39, ncol = 3, byrow = FALSE)
homework_mineMatrix = as.matrix(homework_mine, nrow = 33, ncol = 3, byrow = FALSE)

rowCompare = list()
for(k in 1:33)
{
  rowCompare[[i]] = 0
}

relativeRow = list()
for(i in 1:33)
{
  for(j in 1:39)
  {
    if(homework_mineMatrix[i,1] == homeworkMatrix[j,1])
    {
      if(homework_mineMatrix[i,2] == homeworkMatrix[j,2])
      {
        if(homework_mineMatrix[i,3] == homeworkMatrix[j,3])
        {
          rowCompare[[i]] = 1
          relativeRow[[i]] = j
          break
        }
      }
    }
    else
    {
      if(j != 39)
      {
        next
      }
    }
  }
}

for(l in 1:33)
{
  if(rowCompare[[l]] == 1 && l != 33)
  {
    next
  }
  else if(rowCompare[[l]] == 1 && l == 33)
  {
    print("The content is exactly the same as the benchmark.")
  }
  else
  {
    print("There are differences in the two dataframes.")
    break
  }
}

for(m in 1:33)
{
  if(m == 1)
  {
    next
  }
  else if(m != 1 && relativeRow[[m]] < relativeRow[[m - 1]])
  {
    print("The relative order is different from the benchmark.")
    break
  }
  else if(m != 1 && m != 33 && relativeRow[[m]] > relativeRow[[m - 1]])
  {
    next
  }
  else if(m == 33 && relativeRow[[m]] > relativeRow[[m - 1]])
  {
    print("The relative order is the same as the benchmark.")
  }
}
