

dd <- list("qwe",590,"zzz")
dd

ee <- list(c("qwe","asd"),590,"zzz")
ee

ff <- list(dd,ee,c(1,2,3))
ff

ff[[2]][[1]][2]

ff[[2]][[1]][2] <- 50


for (i in -3:7) {
  print(i^2)
}


for (i in -3:7) {
  for (j in 6:9) {
    print(i^2+sqrt(j))
  }
}


yy <- matrix(NA, nrow=6, ncol=2)

for(j in 1:2){
  for(i in 1:6){
    yy[i,j] = i+(j-1)*6+4
  }
}


getwd()
save(list=c("dd","ee"), file=paste0(getwd(),"/output-2021-10-15.RData"))
load(paste0(getwd(),"/output-2021-10-15.RData"))


