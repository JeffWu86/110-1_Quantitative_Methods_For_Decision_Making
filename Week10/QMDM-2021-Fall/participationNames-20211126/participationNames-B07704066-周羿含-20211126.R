

name <- str_sub(files1[i],(pos[[i]][2,2]+1),(pos1[[i]][3,1]-1))
allNames <- c(allNames,name)
 }
return(allNames)
}

result1 <- getNames(files1)
result2 <- getNames(files2)
result3 <- getNames(files3)

results <- c(result1,result2,result3)
finalResult  <- unique(results)

finalResult <- data.frame(Names=finalResult )