# 가로로 합치기
test1 <- data.frame(id = c(1,2,3,4,5), midterm=c(60,80,70,90,85))
test2 <- data.frame(id = c(1,2,3,4,5), final = c(70,83,65,95,80))


total <- left_join(test1, test2, by ="id")
total
total <- left_join(test1, test2)
 
name <- data.frame(class = c(1,2,3,4,5), teacher = c("kim", "lee", "park", "choi", "jung"))
name %>%  head

exam <- read.csv("csv_exam.csv")
exam %>%  head

exam_new <- left_join (exam, name, by ="class")
exam_new %>%  head



# 세로로 합치기
