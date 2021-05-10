

set.seed(2)
x = runif(10, 0 ,11)
x
typeof(x)

y = 2+ 3*x + rnorm(10,0,0.2)
dfrm = data.frame(x,y)
dfrm

#회귀 방정식 y = 1.791x + 3.049
lm(y~x, data=dfrm)



u = runif(10, 0 , 11)
v = runif(10,11,20)
w = runif(10,1,30)
y = 3 + 0.1*u + 2*v - 3*w + rnorm(10,0,0.1)
dfm = data.frame(y,u,v,w)
dfm
m <- lm(y~u+v+w)
m

#Coefficients:
#  (Intercept)            u            v            w  
#2.645        0.122        2.014       -3.000 

# 회귀식은 y = 2.645 + 0.122u + 2.014v - 3w 로 추정된다.

summary(m)




install.packages("MASS")
library(MASS)
head(ChickWeight)

Chick <- ChickWeight[ChickWeight$Diet==1,]
Chick
Chick <- ChickWeight[ChickWeight$Chick==1,]
Chick
#시간의 경과에 따른 닭들의 몸무게를 단순회귀분석 해본다.
d <- lm(weight~Time, data=Chick)
#회귀식은 weight = 7.988Time + 24.465로 추정된다.
summary(d)
