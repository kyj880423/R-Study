
mpg <- as.data.frame(ggplot2::mpg)

View(mpg)

table(mpg$model)

str(mpg)

mpg_diff2 <- mpg %>% select(fl, cty) %>% filter(fl %in% c("r", "p") )

t.test(data=mpg_diff2, cty~fl, var.equal = T)