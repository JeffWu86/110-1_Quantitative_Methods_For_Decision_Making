# R08943016

rm(list = ls()) # Remove all the variables

# googlesheets4
#install.packages("googlesheets4")
library(googlesheets4)

# Video 1
gs4_auth()

gs4_user()

gs4_deauth()

gs4_find()

gs4_find(n_max = 3)

gs4_get("1wiCmg8UbSKcbNhCgVnlgcRM-cdrhIfrUDWHFAJNB2Xk")

# Video 2
ssid_1 <- "1C9iSvHCG4Z39C0DIXlhei4syqBuLVDTQeGpCr06xi4o"
sheet1 <- read_sheet(ssid_1)

gs4_browse(ssid_1)

sheet_rename(ssid_1, NULL, "worksheet1")

sheet_resize(ssid_1, "worksheet1", 1, NULL, FALSE)

sheet_add(ssid_1, "worksheet2", .after = 1)

# Video 3
gs4_create(name = "R_test_2")

new_data <- data.frame("ID"=1:5, "Score"=c(92,86,87,95,86))
ssid_2 <- "1hIlwNyLI6-xEMMkZkggDVozGouJpEeR2tcyemEju82c"
sheet_write(new_data, ss=ssid_2, sheet="alpha")

append_data <- data.frame("ID"=6, "Score"=100)
sheet_append(ss=ssid_2, data=append_data, sheet="alpha")

overwrite_data <- data.frame("ID"=40, "Score"=950)
range_write(ss=ssid_2, data=overwrite_data, sheet="alpha", range="A5:B5", col_names = FALSE)

range_flood(ss=ssid_2, sheet="alpha", range="A5:B5")

# Video 4
sheet_names(ss=ssid_2)

sheet_properties(ss=ssid_2)

sheet_delete(ss=ssid_2, sheet="¹¤×÷±í1")

range_delete(ss=ssid_2, sheet="alpha", range="A5:B5", shift="up")

gs4_find()


# readxl
#install.packages("readxl")
library(readxl)

# Video 1
read_excel(path="./test_1.xlsx")

read_excel(path="./test_1.xlsx", range=cell_rows(c(1:3)))

read_excel(path="./test_1.xlsx", range=cell_cols(c(1)))

read_excel(path="./test_1.xlsx", n_max=3)

read_excel(path="./test_1.xlsx", skip=3)

read_excel(path="./test_1.xlsx", sheet="sheet_2")

# Video 2
read_excel(path="./test_1.xlsx", n_max=10, sheet="sheet_2")

excel_sheets(path="./test_1.xlsx")

read_excel(path="./test_1.xlsx", n_max=10, sheet="sheet_2", col_types="text")

read_excel(path="./test_1.xlsx", n_max=10, sheet="sheet_2", col_types=c("text", "guess", "guess"))
