# Week 2

## Video 7

#### How to Export Data from R

```R
# Import data
> DataToExport = read.table("./DataToExport.csv", header=T, sep=',')
> DataToExport
          Subject Age Gender Score
1 Dave.Andreychuk  53   male  80.5
2     Jon.Stewart  54   male  82.1
3        Jane.Doe  38 female  75.9
4  Amelia.Earhart 119 female  90.0
5    Donald.Trump  70   male -25.5
6   Sidney.Crosby  28   male  87.2
7   Oprah.Winfrey  62 female  88.8
8      Steve.Jobs  61   male  91.1

# The most flexible command for exporting data is the "write.table" command
# We can use the write.table command to export data, to many formats
> ?write.table

# Save the file in our current working directory, name it "ExportedFileName", and save as a .CSV file format
> write.table(DataToExport, file="ExportedFileName.csv", sep=",")

# Export without row names by setting the "row.names=FALSE" also note, that this will over-write the previous file without giving us a warn
> write.table(DataToExport, file="ExportedFileName.csv", row.names=F, sep=",")

# Specify the path for where to save the file instead
> write.table(DataToExport, 
+           file="../ExportedFileName.csv",
+           row.names=F, sep=",")

# Write.csv does the same, just dont need to specify sep=","
> write.csv(DataToExport, 
+         file="./ExportedFileName.csv", 
+         row.names=F)

# Save as tab-delim txt file, setting sep="\t" and file extension to .txt
> write.table(DataToExport, 
+           file="./ExportedFileName.txt", 
+           row.names=F, sep="\t")

# Save it as space-delimited by setting sep=" "
> write.table(DataToExport, 
+           file="./ExportedFileNameSpace", 
+           row.names=F, sep=" ")

# "write.csv2" command is used some places in Western Europe and would use a comma for a deciaml point and a semicolon for a separator rather than a comma
```



---

Reference:

[Export Data from R (csv , txt and other formats) | R Tutorial 1.6 | MarinStatsLectures](https://www.youtube.com/watch?v=2TcPAZOyV0U&list=PLqzoL9-eJTNARFXxgwbqGo56NtbJnB37A&index=7)

[R Script](https://statslectures.com/r-scripts-datasets)

---

