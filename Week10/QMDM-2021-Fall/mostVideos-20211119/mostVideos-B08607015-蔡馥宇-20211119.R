library(stringr)
QMDMdata = list.files("QMDM-2021-11-05", full.names = FALSE)

QMDMdata = data.frame(QMDMdata)



get_pos = function(i){
  pos = str_locate_all(QMDMdata[i,1], "-")
  return(pos)
}

get_name_str = function(i){
  pos = str_locate_all(QMDMdata[i,1], "-")
  print(pos)
  start_pos = pos[[1]][1,1]
  end_pos = pos[[1]][2,2]
  print(start_pos)
  print(end_pos)
  namestr = str_sub(QMDMdata[i,1], start_pos+1, end_pos-1)
  return(namestr)
}

get_sepisode_str = function(i){
  epistr = str_sub(QMDMdata[i,1], 6, 8)
  return(epistr)
}

get_eepisode_str = function(i){
  pos = str_locate_all(QMDMdata[i,1], "-")
  start_pos = pos[[1]][1,1]
  epistr = str_sub(QMDMdata[i,1], 11, start_pos-1)
  return(epistr)
}


Name = c()
From = c()
To = c()


for (a in 1:39) {
  name_str = (get_name_str(a))
  from_str = (get_sepisode_str(a))
  to_str = (get_eepisode_str(a))
  Name = c(Name, name_str)
  From = c(From, from_str)
  To = c(To, to_str)
}

Homework = data.frame(Name, From, To)

#######################################################

# 找出看最多集的同學

maximum_epi = max(To)

max_row = which(Homework$To == maximum_epi)

# class(max_row)，確定是不是integer
Homework[max_row, 1]
