library(dslabs)
library(dplyr)
data(murders)
murders <- mutate(murders, rate=total/population*100000)
new_murders <- select(murders, population, total, rate)

#instead of for loops we commonly use this functions
#apply family
# APPLY parameters(matrix, (margin=1 apply to rows | margin=2 aplly to columns), function to apply)
apply(new_murders, 1, sum)#totaly pointless example, i know.

# LAPPLY parameters(matrix, '[' (selection operator), row, column) (leave row | column empty to indicate any)
#usefull for comparisons of aggregations from different dataframes
#i guess both dataframes must me identical to work properly
mylist <- list(murders, new_murders)
lapply(mylist, "[", 1, )
lapply(mylist, "[", , 2)

#you can return a vector with unlist function
unlist(lapply(mylist, "[", , 2))

# SAPPLY
# main difference with lapply(which return a list), it return a vector with the results. Unless you pass 'simplify=FALSE' parameter
sapply(mylist, "[", 2, 1)
sapply(mylist, "[", 2, 1, simplify = FALSE)
#PRO TIP: F == FALSE
#rep() is often used together with sapply, it replicate its values a specified number of times
z <- sapply(mylist, "[", 1, 1)
rep(z,c(2,5))#1st item times 2, 2nd item times 5

# VAPPLY parameters(list, FUNCTION, value type to return)
#it apply a function to a list
#calculate length for our list, value type returned integer
vapply(mylist,length, 0L)
# 0 = double | 0L = integer

# MAPPLY
# stands for multivariate apply, it vectorize arguments to a function that isn't usually accepting vector as arguments
#in short, applies a function to multiple, list or vectors arguments
#create a 4*4 matrix with rep
q1 <- matrix(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),4,4)
#easily use mapply ot obtain the same result in shorter code
q2 <- mapply(rep,1:4,4)

# TAPPLY parameters(summary variable, group variable, function)
#lets see the max population by region
tapply(murders$population, murders$region, max)
#mean murders rate by region
tapply(murders$rate, murders$region, mean)

#others

# SPLIT parameters(matrix, group)
# split a matrix into the group defined
split(murders, murders$region)

# CUT parameteres(numeric vector to be cuted, numeric vector with break points(values from vector1), labels to separate breaks)
#breaks must be = labels - 1
#lets define labels to indicate how safe is each state(0 to 2 = safe, 2 to 4 = OK, 4 to infinite = run away)
cut(murders$rate, breaks = c(0,2,4, Inf), labels = c("Safe", "OK", "Run away"))

# QUANTILE

# REDUCE

# IDENTICAL
#test if two objects are exactly equal, return TRUE or FALSE
identical(1,1L)
identical(1,1)

m <- function(x,y){
  ifelse(x>y, x, y)
}
identical(m(1,2), max(1,2))

# UNIQUE
#return a vector with unique values, duplicate ones are removed
unique(c(1,2,2,3,4,3,2,99,1,2,3,5,6,7,5,8,9,9,9,9))
#also can be defined a matrix column
unique(murders[c("region")])