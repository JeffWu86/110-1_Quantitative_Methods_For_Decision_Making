

## To change the default locale of an R session, put the following
## commands in the file C:\Program Files\R\R-4.1.1\etc\Rprofile.site

.First = function(){
  Sys.setlocale(locale="Chinese")
}
.Last=function(){
  # put here the commands you would like R to rum when the session is ended.
}
##

