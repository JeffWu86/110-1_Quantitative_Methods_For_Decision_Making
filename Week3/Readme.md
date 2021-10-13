# Week 3

## Lecture

```R
# Remove 7 & 8 row in original matrix
> matrixOne <- matrix(1:100, nrow=10, ncol=10, byrow=FALSE)
> matrixOne
      [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
 [1,]    1   11   21   31   41   51   61   71   81    91
 [2,]    2   12   22   32   42   52   62   72   82    92
 [3,]    3   13   23   33   43   53   63   73   83    93
 [4,]    4   14   24   34   44   54   64   74   84    94
 [5,]    5   15   25   35   45   55   65   75   85    95
 [6,]    6   16   26   36   46   56   66   76   86    96
 [7,]    7   17   27   37   47   57   67   77   87    97
 [8,]    8   18   28   38   48   58   68   78   88    98
 [9,]    9   19   29   39   49   59   69   79   89    99
[10,]   10   20   30   40   50   60   70   80   90   100
> matrixMinus <- matrixOne[-(7:8),]
> matrixMinus
     [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10]
[1,]    1   11   21   31   41   51   61   71   81    91
[2,]    2   12   22   32   42   52   62   72   82    92
[3,]    3   13   23   33   43   53   63   73   83    93
[4,]    4   14   24   34   44   54   64   74   84    94
[5,]    5   15   25   35   45   55   65   75   85    95
[6,]    6   16   26   36   46   56   66   76   86    96
[7,]    9   19   29   39   49   59   69   79   89    99
[8,]   10   20   30   40   50   60   70   80   90   100


# data.frame usage
> aa <- data.frame(nickname=c("John","Mary","Leo"), weight=60:62, Height=c(160,170,180))
> aa
  nickname weight Height
1     John     60    160
2     Mary     61    170
3      Leo     62    180
> class(aa)
[1] "data.frame"
# Convert data type to factor
> aa[,1] <- as.factor(aa[,1])
> class(aa[1,1])
[1] "factor

# Remove variable, note that the list should be in quotation
rm(list=c("aa", "matrixMinus"))
rm(aa)
rm("matrixMinus")

# Clear all variables
rm(list=ls())

# Inititae the column name of a data frame using colnames
> bb <- matrix(1:12, nrow=6)
> class(bb)
[1] "matrix" "array" 
> bb <-  as.data.frame(bb)
> colnames(bb) <- c("col1","col2")
> bb
  col1 col2
1    1    7
2    2    8
3    3    9
4    4   10
5    5   11
6    6   12
```

