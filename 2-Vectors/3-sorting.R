#order by
library(dslabs)
data(murders)
sort(murders$total)

#order return the indices that sort the vector
x <- c(31, 4, 15,92, 65)
index <- order(x)
#index = 2 3 1 5 4
x[index]

#order state names by total murders
index <- order(murders$total)
murders$abb[index]

#min / max
max(murders$total)
#index for that total max value
imax <- which.max(murders$total)
murders$state[imax]
min(murders$total)

#rank (lowest to highest)
rank(x)
#highest to lowest
rank(-x)
