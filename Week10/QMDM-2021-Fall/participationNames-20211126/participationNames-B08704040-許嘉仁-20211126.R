library('stringr')


dirnames <- list.files('/Users/xujiajin/R Projects/drive-download-20211126T023958Z-001')
filenames1 <- list.files(str_c('drive-download-20211126T023958Z-001/', dirnames[1]))
filenames2 <- list.files(str_c('drive-download-20211126T023958Z-001/', dirnames[2]))
filenames3 <- list.files(str_c('drive-download-20211126T023958Z-001/', dirnames[3]))
i1 <- str_locate(filenames1, "-2021")
names <- str_sub(filenames3,i1[,2]-3, i1[,2]-1)


