compute_s_n <- function(n){
  x <- 1:n#create a vecto from 1 to n
  sum(x)
}
compute_s_n(100)


m <- 25
s_n <- vector(length = m) #an empty vector
for (n in 1:m) {
  s_n[n] <- compute_s_n(n)
}
s_n

n <- 1:m 
plot(n, s_n)
#check if it's correct comparing with the formula n*(n+1)/2
lines(n, n*(n+1)/2)