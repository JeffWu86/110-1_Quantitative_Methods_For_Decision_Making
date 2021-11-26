#Data frame的排序

kk <- order(homework2[ ,3], decreasing=T)
newHomework2 <- homework2[kk, ]