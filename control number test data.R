# mes control number test data
#이상치 데이터 테스트
d <- data.frame("1000124"=c(2222.21,2322.1,2212.2,23232.1, 111.1, 125.23, 323.323, 0 ), "1000125"=c(2222.21,2322.1,2212.2,23232.1))

str(d)

summary(d)

boxplot(d, horizontal = FALSE)
text(d$X1000124, labels=d$X1000124)

# 이상값 판정을 도와주는 라이브러리
install.packages("outliers")
library(outliers)

#평균과 가장 차이가 많은 값 출력
outlier(d) 
##  X1000124 X1000125 
##  23232.1  23232.1 

# 반대방향으로 가장 차이가 많이 나는 값 출력
outlier(d, opposite = TRUE)

boxplot(d)