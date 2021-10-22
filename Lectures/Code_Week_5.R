


aaa <- c(1,8,10)
bbb <- "try"
ccc <- data.frame(col1=c(12,34),col2=c(56,78))
ddd <- list(aaa,bbb,ccc)
eee <- list(ddd,aaa)


install.packages("stringr")
library(stringr)
kk <- "abcdefgheijk"
pp <- str_split(kk, "e")


kk <- "abcdefgheijk"
pp <- str_split(kk, "de")


jj <- str_split(kk,"")

kk <- "John Wang"
yy <- str_split(kk, " ")
zz <- paste0("Mary ", yy[[1]][2])

kk <- c("John Wang", "Tom Cruise", "Kelly Chen")
yy <- str_split(kk, " ")

install.packages("pdftools")
library(pdftools)
pdfText <- pdf_text(paste0(getwd(), "/05160218039.004.pdf"))
text1 <- pdfText[1]
pos1 <- str_locate(text1, "發文字號：")
pos2 <- str_locate(text1, "彰院毓110司執助丁字第683號")
pos3 <- str_locate(text1, "主旨")
wantedString <- str_sub(text1, pos1[1,2]+1, pos3[1,1]-3)
file.rename(paste0(getwd(), "/05160218039.004.pdf"), paste0(getwd(), "/", wantedString, ".pdf"))

###################################################################


Mat1 = matrix(1:100, nrow = 10, ncol = 10, byrow = T)
Mat2 = Mat1^2
Mat3 = matrix(NA, nrow = 10, ncol = 10, byrow = T)

for (i in 1:10) {
  for (j in 1:10){
    if (i < j) {
      Mat3[i,j] = Mat1[i,j] + Mat2[i,j]
    } else if (i == j) {
      Mat3[i,j] <- i
    } else {
      Mat3[i,j] <- j^2+i^3
    }
  }
}

if () {
  
}

i <- 0
while (i<=6) {
  print(i^2)
  i <- i+1
}


squarePlusCubic <- function(one, two) {
  added <- one^2 + two^3
  return(added)
}

squarePlusCubic(2,3)

print(squarePlusCubic(2,3)*(-1))

##################################################################
library(stringr)

aa <- str_locate("Where are you?", "er")
aa
class(aa)
aa[1,1]
aa[1,2]

bb <- str_locate(hotelNumberOfRoomsData[1,2], "¥D­n³]¬I")
bb

cc <- str_sub(hotelNumberOfRoomsData[1,2], 5, 7)

hotelNumberOfRoomsData[,2] <- as.character(hotelNumberOfRoomsData[,2])

hotelNumberOfRoomsData[1,2] <- cc


dd <- str_locate(NA, "100")
dd

if (is.na(dd[1,1])) {
  print("abc")
} else {
  print("def")
}


ff <- is.na(hotelNumberOfRoomsData[,2])
gg <- which(ff==TRUE)

Sys.setlocale(locale="Chinese (Traditional)_Taiwan")


