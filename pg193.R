
mpg <- as.data.frame(ggplot2::mpg)
mean_cty <- mpg %>% filter(class == "suv") %>%  group_by(manufacturer) %>% summarise(mean_cty = mean(cty)) %>% arrange(mean_cty) %>% head(5)
ggplot(data = mean_cty, aes(x=reorder(manufacturer, -mean_cty), y=mean_cty)) + geom_col()




ggplot(data = mpg, aes(x = class)) + geom_bar()

#car_count <- mpg %>% group_by(class) %>%  summarise(car_count = n())
ggplot(data = car_count, aes(x = class, y=car_count)) + geom_col()