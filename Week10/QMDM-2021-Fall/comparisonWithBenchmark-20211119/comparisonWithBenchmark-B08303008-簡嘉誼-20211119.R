library(dplyr)

all_equal(data, homework) == TRUE  # output: FALSE

# check what's wrong
anti_join(data, homework)  # 找出我有但benchmark沒有的
anti_join(homework, data)  # 找出benchmark有但我沒有的

print('用anti_join分別比對兩dataframe，可以看到兩dataframe不同之處為該列姓名欄因對方電腦無法顯示特殊字而以？取代，因此實則該列數據相同。')

