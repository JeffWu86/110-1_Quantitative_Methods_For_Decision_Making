library(googledrive)
library(stringr)
library(utf8)

folder1 <- 'https://drive.google.com/drive/folders/1-DgBDPi2e8ZDz-jJFiITbf_Fl85TBYtn'
folder1_id <- drive_get(as_id(folder1))
files1_tipple <- drive_ls(folder1_id)
files1_name <- files1_tipple$name

folder2 <- 'https://drive.google.com/drive/folders/1n-9bFlCOeC8bVWOz5qGTCJxbcb0czvgI'
folder2_id <- drive_get(as_id(folder2))
files2_tipple <- drive_ls(folder2_id)
files2_name <- files2_tipple$name

folder3 <-'https://drive.google.com/drive/folders/1w7wdA_TnHzoSSkz5e0hJpyMmTfY-l_Lf'
folder3_id <- drive_get(as_id(folder3))
files3_tipple <- drive_ls(folder3_id)
files3_name <- files3_tipple$name

files1_name[1]
files2_name[1]
files3_name[1]

name_list1 = c()
for (i in seq_along(files1_name)){
  a <- str_split(files1_name[i], "-")
  name_list1 <- c(name_list1, a[[1]][3])
}
name_list1 <- data.frame(name_list1)

name_list1 = c()
for (i in seq_along(files1_name)){
  a <- str_split(files1_name[i], "-")
  name_list1 <- c(name_list1, a[[1]][3])
}
name_list1 <- data.frame(name_list1)