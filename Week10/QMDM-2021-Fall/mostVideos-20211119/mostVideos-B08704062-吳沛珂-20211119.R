library(stringr)
setwd("D:/R")
homework1 = read.csv("homework1.csv")

fromN = as.numeric(homework1$From)
toN = as.numeric(homework1$To)
toMinusFrom = toN - fromN
studentNum = length(fromN)
maxMinus = 0

for(i in 1:studentNum)
{
  if(toMinusFrom[i] >= maxMinus)
  {
    maxMinus = toMinusFrom[i]
  }  
}
maxOrder = c()
m = 0
for(k in 1:studentNum)
{
  if(toMinusFrom[k] == maxMinus)
  {
    m = m + 1
    maxOrder[m] = k
  }
}

Name = homework1$Name
len = length(maxOrder)
for(j in 1:len)
{
  print(Name[maxOrder[j]])
}

