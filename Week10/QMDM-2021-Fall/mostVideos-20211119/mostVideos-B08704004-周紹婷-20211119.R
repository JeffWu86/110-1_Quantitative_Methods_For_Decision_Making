
#Finding the biggest number in column 3.
max(homework[[3]])
print(paste0("The last video has been watched is: ", max(homework[[3]])))

#Finding which row does the biggest number belong to.
row <- which.max(homework[[3]])

#Finding who watched to most videos.
name <- homework[row, 1]
print(paste0(name, " watched the most videos."))

############################################################