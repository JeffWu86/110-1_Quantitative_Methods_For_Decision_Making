library(stringr)

filenames = list.files("QMDM-2021-11-05", full.names = FALSE)

file <- as.data.frame(filenames, full.names = FALSE)

c <-str_locate(file[[1]], "-")
a <- str_locate(file[[1]], "Marin")
d <- str_locate(file[[1]], "2021")
b <- str_locate(file[[1]], "To")

str_sub(lofile[[1]], a[,2]+1, b[,1]-1)
str_sub(lofile[[1]], a[,2]+1, b[,1]-1)
str_sub(lofile[[1]], a[,2]+11, b[,1]-2)

classhw <- data.frame(
  Name=str_sub(file[[1]], c[,2]+11, d[,1]-2), 
  From=str_sub(file[[1]],a[,2]+1, b[,1]-1), 
  To=str_sub(file[[1]], b[,2]+1, c[,1]-1)
)

classhw

hw1 <- classhw
hw2 <- homework
conResult1 <- c(as.matrix(hw1))
conResult2 <- c(as.matrix(hw2))
comparison <- conResult1 == conResult2
comparison
which(!comparison)
which(!(conResult1 == conResult2))

check <- identical(hw1, hw2)
check
max(classhw$To)
classhw[which.max(classhw$To), "Name"]
