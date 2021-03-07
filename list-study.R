a <- list(1,2,3,4,5)
print(a) 

b <- list("안","녕")
print( b)

print(b[[1]])

c <- list("a"=list(1,2,3), "b"=list(4,5,6))
c[["a"]][1] <- 5
print(c[["a"]][1])
