# Week 4

## Lecture

```R
# "list" command store different type of variables
> dd <- list("qwe",590,"zzz")
> dd
[[1]]
[1] "qwe"
[[2]]
[1] 590
[[3]]
[1] "zzz"
> ee <- list(c("qwe","asd"),590,"zzz")
> ee
[[1]]
[1] "qwe" "asd"
[[2]]
[1] 590
[[3]]
[1] "zzz"
> ff <- list(dd,c(1,2,3))
> ff
[[1]]
[[1]][[1]]
[1] "qwe"
[[1]][[2]]
[1] 590
[[1]][[3]]
[1] "zzz"
[[2]]
[1] 1 2 3

# Get the data in one list use double bracket
> ff[[2]][3]
[1] 3

# If list in a list
> ff <- list(dd,ee,c(1,2,3))
> ff[[2]][[1]][2]

# for loop
> for (i in -3:7) {
+   print(i^2)
+ }
[1] 9
[1] 4
[1] 1
[1] 0
[1] 1
[1] 4
[1] 9
[1] 16
[1] 25
[1] 36
[1] 49

# Combine two string using "paste0" command
> outfile <- paste0(getwd(), "/output-2021-10-15.RData")

# "save" command and "load" command, list let R know which variables to be stored
> save(list=c("dd","ee"), file=paste0(getwd(),"/output-2021-10-15.RData"))
> load(paste0(getwd(),"/output-2021-10-15.RData"))
```

