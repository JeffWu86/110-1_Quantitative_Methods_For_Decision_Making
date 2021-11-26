# 1. Install package
# install.packages("googledrive")

# 2. Open library
# library(googledrive)
library(stringr)
library(rmarkdown)
library(utf8)

# 3. Search for all files in the folder
folder  <- 'C:/Users/Sing-hao Ku/Downloads/Benchmark_R08943016/QMDM-2021-11-05'

files_name <- list.files(path=folder)
print(files_name)
# folder_id <- drive_get(as_id(folder))
# files_tipple <- drive_ls(folder_id)
# files_name <- files_tipple$name

# 4. Arrange data  
From <- c()
To <- c()
Name <- c()
for (i in seq_along(files_name)){
  if (grepl("Marin", files_name[i]) == TRUE){
    a <- str_split(files_name[i], "-")
    b <- str_locate(a[[1]][1], "To")
    from <- str_sub(a[[1]][1], 6, b[1]-1)
    to <- str_sub(a[[1]][1], b[2]+1)
    
    From <- c(From, from)
    To <- c(To, to)
    Name <- c(Name, a[[1]][2])
  }
}

# 5. Transform data into dataframe
my_homework <- data.frame(Name, From, To)
View(my_homework)

# 6. Find the maximum
max = list(0,0)
for (i in seq_along(To)){
  a <- str_split(To[i], "[.]")
  b <- as.numeric(a[[1]][1])
  c <- as.numeric(a[[1]][2])

  if (b > max[1]){
    if(c > max[2]){
      max[1] <- a[[1]][1]
      max[2] <- a[[1]][2]
    }
  }
  print(max)
}
max <- paste0(max[1], '.',max[2])
print(max)

max <- paste0(max[1], '.',max[2])

# 7. Find the names
my_homework$Name[homework["To"] == max]
ans <- my_homework$Name[homework["To"] == max]
utf8_print(ans)