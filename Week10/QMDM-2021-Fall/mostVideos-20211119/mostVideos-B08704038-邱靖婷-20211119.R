library(stringr)

#Set up data frame
note <- as.data.frame(list.files("QMDM-2021-11-05"))

a1 <- str_locate(note[[1]], "Marin")
a2 <- str_locate(note[[1]], "To")
a3 <- str_locate(note[[1]], "-")
a4 <- str_locate(note[[1]], "-2021")
                 
from <- str_sub(note[[1]], a1[ ,2]+1, a2[ ,1]-1)

to <- str_sub(note[[1]], a2[ ,2]+1, a3[ ,1]-1)

name <- str_sub(note[[1]], a3[ ,2]+1, a4[ ,1]-1)

homework <- data.frame(
  Name=name,
  From=from,
  To=to)
View(homework)

#Find the total chapter someone has read
sub_chap <- c(0, 17, 11, 4, 14, 12) #The sub_chapters of each relative chapter. 
cumsum_sub_chap <- cumsum(sub_chap)
from_dot <- str_locate(from, ".")
to_dot <- str_locate(to, ".")
max_chap <- cumsum_sub_chap[as.numeric(to, to_dot[,1], to_dot[,2])] 
          - cumsum_sub_chap[as.numeric(from, from_dot[,1], from_dot[,2])]
max_sub_chap1 <- as.numeric(str_sub(to, to_dot[,2]+2, str_length(to)))
max_sub_chap2 <-(as.numeric(str_sub(from, from_dot[,2]+2, str_length(from)))-1)
max_read <- max_chap + max_sub_chap - max_sub_chap2

#Find who read most chapters
max_val <- max(max_read)
max_index <- grep(max_val, max_read)
cat(homework[max_index,1] , "read(s) the most parts.") 