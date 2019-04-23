library(dslabs)
data(murders)

# WHICH
x <- c(FALSE, TRUE, FALSE, TRUE, TRUE, FALSE)
#elements of x that are TRUE
which(x)

#index for the state called massachusetts (can return more than one if any)
index <- which(murders$state == "Massachusetts")
murder_rate[index]

# MATCH
#which index of the second vector matches the first one
index <- match(c("New York", "Florida", "Texas"), murders$state)
murders$state[index]
murder_rate[index]

# %IN%
x <- c("a", "b", "c", "d", "e")
y <- c("a", "d", "f")
y %in% x

#check if state x exist in vector
c("Boston", "Dakota", "Washington") %in% murders$state