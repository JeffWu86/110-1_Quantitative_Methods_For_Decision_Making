

print("Hi")

newObject <- 5

newObject <- 12

class(newObject)
      
newObject <- 'Hello'
      
class(newObject)

newObject <- c(5,12,36)

newObject <- (-4):(-2)

newObject <- c('Hello',"World")

newObject <- c(34, "Hey")

class(newObject)

elementOne <- newObject[1]

class(elementOne)

elementOne <- as.numeric(elementOne)

class(elementOne)

lengNew <- length(newObject)

class(lengNew)

sequ <- -20000:200000
lengSequ<-length(sequ)

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

