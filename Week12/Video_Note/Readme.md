

# Video

### googlesheets4

##### gs4_auth, gs4_deauth, gs4_user, gs4_find, gs4_get

```R
# Install library
> install.packages(googlesheets4)

# Load library
> library(googlesheets4)
Warning message:
套件 ‘googlesheets4’ 是用 R 版本 4.1.2 來建造的 

# Set an account for authentication
> gs4_auth()

# Reveals the email address of the user associated with the current token.
# If no token has been loaded yet, this function does not initiate auth.
> gs4_user()
i Logged in to googlesheets4 as r08943016@g.ntu.edu.tw.

# Put googlesheets4 into a de-authorized state
> gs4_deauth()
> gs4_user()
i Not logged in as any specific Google user.

# Finds your Google Sheets.
> gs4_find()
> gs4_find(n_max = 3)

# Get the file by id or url
> gs4_get("1wiCmg8UbSKcbNhCgVnlgcRM-cdrhIfrUDWHFAJNB2Xk")
```



##### read_sheet, gs4_browse, sheet_rename, sheet_resize, sheet_add

```R
# Read sheet from google drive
> ssid_1 <- "1C9iSvHCG4Z39C0DIXlhei4syqBuLVDTQeGpCr06xi4o"
> sheet1 <- read_sheet(ssid_1)
√ Reading from R_test_1.
√ Range worksheet1.

# Browse the sheet in default browser
> gs4_browse(ssid_1)

# Change the worksheet name
> sheet_rename(ssid_1, NULL, "worksheet1")
√ Renaming sheet ChangeName to worksheet1.

# Resize the sheet
# sheet_resize(ss, sheet = NULL, nrow = NULL, ncol = NULL, exact = FALSE)
# exact: Logical, indicating whether to impose nrow and ncol exactly or to treat them as lower bounds.
# If exact = FALSE, sheet_resize() can only add cells.
# If exact = TRUE, cells can be deleted and their contents are lost.
> sheet_resize(ssid_1, "worksheet1", 1, NULL, FALSE)
√ Resizing sheet worksheet1 in R_test_1.
i No need to change existing dims (138 x 20).

# Add new sheet
# Adds one or more (work)sheets to an existing (spread) sheet. Note that sheet names must be unique.
# sheet_add(ss, sheet = NULL, ..., .before = NULL, .after = NULL)
> sheet_add(ssid_1, "worksheet2", .after = 1)
√ Adding 1 sheet to R_test_1:
* worksheet2
```



##### gs4_create, sheet_write, sheet_append, range_write, range_flood

```R
# Creates an entirely new sheet
> gs4_create(name = "R_test_2")
√ Creating new Sheet: R_test_2.
Auto-refreshing stale OAuth token.

# Write data to Googlesheet file
> new_data <- data.frame("ID"=1:5, "Score"=c(92,86,87,95,86))
> ssid_2 <- "1hIlwNyLI6-xEMMkZkggDVozGouJpEeR2tcyemEju82c"
> sheet_write(new_data, ss=ssid_2, sheet="alpha")
√ Writing to R_test_2.
√ Writing to sheet alpha.

# Add data to Googlesheet file last row
> append_data <- data.frame("ID"=6, "Score"=100)
> sheet_append(ss=ssid_2, data=append_data, sheet="alpha")
√ Writing to R_test_2.
√ Appending 1 row to alpha.

# Overwirte data
> overwrite_data <- data.frame("ID"=40, "Score"=950)
> range_write(ss=ssid_2, data=overwrite_data, sheet="alpha", range="A5:B5", col_names = FALSE)
√ Editing R_test_2.
√ Writing to sheet alpha.

# Range_flood
# range_flood() "floods" a range of cells with the same content.
# range_clear() is a wrapper that handles the common special case of clearing the cell value
> range_flood(ss=ssid_2, sheet="alpha", range="A5:B5")
√ Editing R_test_2.
√ Editing sheet alpha.
```



##### sheet_names, sheet_properties, sheet_delete, range_delete, gs4_find

```R
# Reveals full metadata or just the names for the sheets inside a sheet.
> sheet_names(ss=ssid_2)
[1] "工作表1" "alpha"  

# Reveals full metadata or just the names for the sheets inside a sheet.
> sheet_properties(ss=ssid_2)
# A tibble: 2 x 8
  name    index        id type  visible grid_rows grid_columns data  
  <chr>   <int>     <int> <chr> <lgl>       <int>        <int> <list>
1 工作表1     0         0 GRID  TRUE         1000           26 <NULL>
2 alpha       1 100756939 GRID  TRUE            7            2 <NULL>

# Delete sheet
> sheet_delete(ss=ssid_2, sheet="工作表1")
√ Deleting 1 sheet from R_test_2:
* 工作表1

# Delete a range of sheet
> range_delete(ss=ssid_2, sheet="alpha", range="A5:B5", shift="up")
√ Editing R_test_2.
√ Deleting cells in sheet alpha.

# Find the sheet in my drive
> gs4_find()
Auto-refreshing stale OAuth token.
# A dribble: 38 x 3
   name                          id                                           drive_resource   
   <chr>                         <drv_id>                                     <list>           
 1 R_test_2                      1hIlwNyLI6-xEMMkZkggDVozGouJpEeR2tcyemEju82c <named list [35]>
 2 R_test_1                      1C9iSvHCG4Z39C0DIXlhei4syqBuLVDTQeGpCr06xi4o <named list [35]>
 3 1101_2微課程課前問卷 (回覆)   1YtVfBajB8_qN8gvpCvi-Hhap-f5pwDbF3_z0QveU7fc <named list [34]>
 4 列表                          1SynNZSP6fhbUJ3swFhki3SaDGyz6osX6vlGT1zsDHEc <named list [35]>
 5 2021 Fall 交電加簽表單 (回覆) 1ATM5HjfzE7MPpoMc_j4zoU7JJCHEWtO4snmjSBUJc6k <named list [33]>
 6 1092_2 線上課程問卷 (回應)    1ppcEh9tbV1V34bWQPxdaq08zCFAeWZq24y5vwnO8Wy4 <named list [34]>
 7 喝飲料囉-碩論口試             1s7GUQAXqjEinkKhF6Kf1CNnEe7d2XO2OOi56a_lxAUs <named list [35]>
 8 喝飲料囉*2                    1K4-BDUtCIwISSmdRJpeI-cQzrApDs0XPZmzif1vYumA <named list [35]>
 9 R影片指令選擇                 1x07ZHmCFt2azUkBpwc1ktkP3BE2Ezy5CiRY0POfnxQM <named list [34]>
10 1092_1微課程課後問卷 (回應)   1colMWyiGYNGI0j-vt2QrHioT3fxMAHuC9ObUM3k1WjU <named list [34]>
# ... with 28 more rows
```



#### readxl

##### cell_rows, cell_colms, n_max, skip, sheet

```R
# Install library
> install.packages("readxl")

# Load library
> library(readxl)

# cell_rows
> read_excel(path="./test_1.xlsx")
# A tibble: 14 x 2
      ID  Data
   <dbl> <dbl>
 1     1    76
 2     2    59
 3     3    41
 4     4    83
 5     5    16
 6     6    61
 7     7    16
 8     8    24
 9     9    20
10    10   100
11    11    15
12    12    86
13    13    57
14    14    54
> read_excel(path="./test_1.xlsx", range=cell_rows(c(1:3)))
# A tibble: 2 x 2
     ID  Data
  <dbl> <dbl>
1     1    76
2     2    59

# cell_colms
> read_excel(path="./test_1.xlsx", range=cell_cols(c(1)))
# A tibble: 14 x 1
      ID
   <dbl>
 1     1
 2     2
 3     3
 4     4
 5     5
 6     6
 7     7
 8     8
 9     9
10    10
11    11
12    12
13    13
14    14

# n_max
> read_excel(path="./test_1.xlsx", n_max=3)
# A tibble: 3 x 2
     ID  Data
  <dbl> <dbl>
1     1    76
2     2    59
3     3    41

# skip
> read_excel(path="./test_1.xlsx", skip=3)
# A tibble: 11 x 2
     `3`  `41`
   <dbl> <dbl>
 1     4    83
 2     5    16
 3     6    61
 4     7    16
 5     8    24
 6     9    20
 7    10   100
 8    11    15
 9    12    86
10    13    57
11    14    54

# sheet
> read_excel(path="./test_1.xlsx", sheet="sheet_2")
# A tibble: 14 x 3
      ID  Data Smoke
   <dbl> <dbl> <lgl>
 1     1    76 TRUE 
 2     2    59 FALSE
 3     3    41 TRUE 
 4     4    83 TRUE 
 5     5    16 TRUE 
 6     6    61 FALSE
 7     7    16 FALSE
 8     8    24 TRUE 
 9     9    20 TRUE 
10    10   100 TRUE 
11    11    15 FALSE
12    12    86 TRUE 
13    13    57 FALSE
14    14    54 TRUE 
```



##### read_excel, excel_sheets

```R
> read_excel(path="./test_1.xlsx", n_max=10, sheet="sheet_2")
# A tibble: 10 x 3
      ID  Data Smoke
   <dbl> <dbl> <lgl>
 1     1    76 TRUE 
 2     2    59 FALSE
 3     3    41 TRUE 
 4     4    83 TRUE 
 5     5    16 TRUE 
 6     6    61 FALSE
 7     7    16 FALSE
 8     8    24 TRUE 
 9     9    20 TRUE 
10    10   100 TRUE

# List the sheet in Excel
> excel_sheets(path="./test_1.xlsx")
[1] "sheet_1" "sheet_2"

# Specify the input types
> read_excel(path="./test_1.xlsx", n_max=10, sheet="sheet_2", col_types="text")
# A tibble: 10 x 3
   ID    Data  Smoke
   <chr> <chr> <chr>
 1 1     76    TRUE 
 2 2     59    FALSE
 3 3     41    TRUE 
 4 4     83    TRUE 
 5 5     16    TRUE 
 6 6     61    FALSE
 7 7     16    FALSE
 8 8     24    TRUE 
 9 9     20    TRUE 
10 10    100   TRUE 

> read_excel(path="./test_1.xlsx", n_max=10, sheet="sheet_2", col_types=c("text", "guess", "guess"))
# A tibble: 10 x 3
   ID     Data Smoke
   <chr> <dbl> <lgl>
 1 1        76 TRUE 
 2 2        59 FALSE
 3 3        41 TRUE 
 4 4        83 TRUE 
 5 5        16 TRUE 
 6 6        61 FALSE
 7 7        16 FALSE
 8 8        24 TRUE 
 9 9        20 TRUE 
10 10      100 TRUE 
```

---

Reference:

[readxl](https://www.youtube.com/playlist?list=PLByAw2515qkmKh5U4FhilKGVrGZ9qrwSK)

[googlesheet4](https://www.youtube.com/playlist?list=PLByAw2515qkkOAgTwOCIYeudCIp4ykJbH)

---

