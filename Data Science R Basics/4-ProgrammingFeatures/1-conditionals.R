a <- sample(0:10, 1)
if(a != 0){
  print(a)
  print(1 / a)
}else{
  print("No reciprocal for 0")
}

library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < 0.5){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

b <- 2
ifelse(b > 0, 1/b, NA)#like a ternary operator
#ifelse works on vectors, it examines each elemnt

c <- c(0, 1, 2, -4, 5)
ifelse(c > 0, 1/c, NA)

#let's replace NA with 0
data(na_example)
sum(is.na(na_example))
#145 NA to replace
no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))#done

# ANY return true if any element is true
z <- c(TRUE, TRUE, FALSE)
any(z)
x <- c(FALSE, FALSE, FALSE)
any(x)
# ALL return true if all elements are true
all(z)
y <- c(TRUE, TRUE, TRUE)
all(y)