

dd <- list("qwe",590,"zzz")
dd

ee <- list(c("qwe","asd"),590,"zzz")
ee

ff <- list(dd,c(1,2,3))
ff

ff[[2]][3]

ff[[2]][3] <- 50


for (i in -3:7) {
  print(i^2)
}


for (i in -3:7) {
  for (j in 6:9) {
    print(i^2+sqrt(j))
  }
}


yy <- matrix(NA, nrow=6, ncol=2)

getwd()
save(list=c("aa","bb"), file=paste0(getwd(),"/output-2020-10-16.RData"))
load(paste0(getwd(),"/output-2020-10-16.RData"))


