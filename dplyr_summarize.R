exam <- read.csv("csv_exam.csv")
exam %>% group_by(class) %>% summarize(mean_math = mean(math))

exam %>% group_by(class) %>% summarize(mean_math = mean(math), n = n()) 



mpg <- as.data.frame(ggplot2::mpg)
mpg %>% group_by(manufacturer, drv) %>%  summarise( mean_cty = mean(cty))  %>% head

