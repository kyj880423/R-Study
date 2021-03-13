dt <- as.data.frame(ggplot2::mpg)

dt %>% filter(manufacturer == 'audi') %>% arrange(desc(hwy)) %>% head(5)
