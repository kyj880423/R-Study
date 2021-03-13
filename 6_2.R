exam <- read.csv("csv_exam.csv")
a< - exam %>% 
  filter(class == 1) %>% 
  select (english) %>% 
  head(3)
print(a)




