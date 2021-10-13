

matrixOne <- matrix(1:100, nrow=10, ncol=10, byrow=FALSE)

matrixOne

?matrix # help(matrix) is an alternative

matrixSub <- matrixOne[7:8,3:5]

matrixSub

matrixMinus <- matrixOne[-(7:8),]
matrixMinus

matrixMinus <- matrixOne[-(7:8),4:8]
matrixMinus

length(matrixMinus)
class(matrixMinus)

matrixMinus[2,3] <- "try"
matrixMinus
class(matrixMinus)
class(matrixMinus[1,2])

####################################################################

aa <- data.frame(nickname=c("John","Mary","Leo"), weight=60:62, Height=c(160,170,180))

aa

class(aa)

rm(list=c("aa","matrixMinus"))

ff <- seq(3,9,2)
ff

gg <- rep(ff, 4)
gg

bb <- matrix(1:12, nrow=6)

class(bb)

bb <-  as.data.frame(bb)

class(bb)

colnames(bb) <- c("col1","col2")

bb <- as.matrix(bb)

cc <- c(123,45,678)

class(cc)

cc <- as.character(cc)

class(cc)
cc

cc[1]+cc[3]

