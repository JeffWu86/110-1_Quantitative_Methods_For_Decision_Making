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

















```

