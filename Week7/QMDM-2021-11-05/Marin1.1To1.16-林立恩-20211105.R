# R note 
#Marin 1.1-1.16


#Rstudio: A free, open-source integrated development environment (IDE) for R
#R markdown: enable you to embed R code and R output directly into document, pdf, HTML???

x<-1:5
y<6:10
z<-11:15
sum(x,y,z)

#You can import data set from the click in the left or use read.table()

#Basic functions

#assign and print value
x=10
x<-10
print(x) #R is case sensitive(X won't work)
y='characters'

#What's stored in the working menu
ls()
rm(x)# remove x from working menu

#Arithmetic operation
sqrt(x) #square root of x
log(x) #Natural logarithm of x
exp(x) # exponential of x , anti-log
log2(x) #log base 2 of x, other number are plausible
abs(x) #absolute value of x


#YouTube 1.4-1.7

#number and sequence
x<-1
y<-seq(from=1, to=3, by =0.25)
z<- rep(1:3, times=10) #character and sequance can also be repeated
y+x #every elements will be sum with x
seq(1:3)+seq(4) #if the elements are not equal, then your can't to the calculation
y[y<3] # use index to find specific element

#matrix
matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,byrow = TRUE) #create a matrix - byrow means the order of the numbers are by row

#import data
?read.csv
read.csv(filename.choose(), header= FALSE) #readcsv file - file.choose() allows you to search the file directly , header= whether the first row is header
read.table(filenmae.choose(), header=F, sep=',') #read table - sep=how the elements were separated
read.delim(filename.choose(),header=T)#read tab-delimited file , txt file
#or you can just type the import dataset on the right side then find your file 

#export data
?write.table
write.table(dataname,file='filename.csv or filepath-not saved in working directory', sep=',', row.name=F) #it will be saved at current working directory - this can be saved with many formats like csv,txt
write.csv(dataname,file='filename or path', row.name=F) #save as csv file

#YouTube 1.8-1.10

names(aa) #find the names of each variable
mean(aa$weight) #use $ to extract value from data
attach(aa) #attach database to R search path - pro:call the variable directly, con: account for working memories
mean(weight)
detach(aa)#just detach the database
levels(aa$weight) #show levels attribute  of a variable
?levels
summary(aa)
as.factor(aa$weight) #turn the variable into factor
dim(aa) #dimension of the data (number of observations, number of variables)
length(aa) #=3
aa[1:2,]  #first two rows

#combining data
cc<-cbind(aa,aa$nickname=='John') #bind the data with another data with additional column
cc
dd<-rbind(cc,c('Lien',52, 171, FALSE)) #bind with additional row
dd
rm(list=ls()) #remove all variables from global environment

#YouTube 1.11-1.16

#setting and loading working directory
getwd()#find current working directory
setwd('the path to the folder') #set the working directory #or you can just click session and choose working directory

save.image('filename,Rdata')# save as a work space image file #or just click session and save 
rm(list=ls())#clear the work space #or just click session
load('filename.Rdata') #or load(file.choose())- to directly choose the file or just click session

#writing script
#click file to open or create a R script
#Run multiple lines of code - just select them all and run
#type and click tab key - Rstudio will show possible options of commands

#install package
install.packages('epiR') #install package epiR, or leave it blank it will let you choose or you can click tools to install
library('epiR')#load the library of this package to available the commands - disappear after end of R session
help(package=epiR)
remove.packages('epiR')

#Customize - click tools - options 

#apply function
data1<-matrix(seq(1,10),nrow=5,ncol = 2,byrow=F)
?apply #MARGIN-1 means row, 2 means column, FUN - means function
apply(data1,2, mean, na.rm=TRUE) #na.rm - remove missing values
colMeans(data1,na.rm=TRUE) #calculate column mean
apply(data1,2,quantile,prob=c(0.2,0.8))# quantile-calculate percentile, prob=c(0.2,0.8)- which percentile to calculate
apply(data1,2,plot,type='l', main='hi', xlab='Lien', ylab='I am') #use plot function to create a line plot(type='l')
plot(data1, type='l')
apply(data1,1,sum) #calculate the sum of the row
rowSums(data1,na.rm=T) #same calculate the row sum

#tapply function
?tapply # INDEX- a grouping variable to create subsets of data, simplify-let R know to simplify the result
heightdata<-data.frame('age'=c(13,12,14,15,15,13),'height'=c(168,157,167,177,169,172))
heightdata
attach(heightdata)
tapply(age,height>160,summary) #find subsets to calculate
#or you can use by command
?by




