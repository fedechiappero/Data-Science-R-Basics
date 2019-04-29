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

# VAPPLY

# MAPPLY
# stands for multivariate apply, it vectorize arguments to a function that isn't usually accepting vector as arguments
#in short, applies a function to multiple, list or vectors arguments
#create a 4*4 matrix with rep
q1 <- matrix(c(rep(1, 4), rep(2, 4), rep(3, 4), rep(4, 4)),4,4)
#easily use mapply ot obtain the same result in shorter code
q2 <- mapply(rep,1:4,4)

# TAPPLY

#others

# SPLIT

# CUT

# QUANTILE

# REDUCE

# IDENTICAL

# UNIQUE