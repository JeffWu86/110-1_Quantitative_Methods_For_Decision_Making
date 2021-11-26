load("D:/大學課程/四上/數量方法與決策分析/homework-B07704080-20211105.Rdata")
b <- load("D:/大學課程/四上/數量方法與決策分析/homework-B07704080-20211105.Rdata")
homework_me <- homework
b1 <- c(as.matrix(homework_me))



load("C:/Users/pw_teru/Downloads/homework-R08943016.RData")
a <-load("C:/Users/pw_teru/Downloads/homework-R08943016.RData")
homework_bench <- homework
a1 <- c(as.matrix(homework_bench))

setdiff(homework_me,homework_bench)
setequal(homework_me,homework_bench)

teacher_method <- homework_me==homework_bench