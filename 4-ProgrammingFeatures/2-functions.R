#i know, mean already exist, it's just an example
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}
vec <- c(8,9,8,9,10,10)
avg(vec)

identical(mean(vec),avg(vec))

#you can pre-set value for parameters
avg <- function(x, arithmetic=TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}