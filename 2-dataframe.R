#load library
library(dslabs)
#load murders dataset
data("murders")
#print dataset
murders
#print dataset class
class(murders)
#print dataset structure
str(murders)
#print first 6 rows dataset
head(murders)

#accessing data

#print column names
names(murders)
# $ it's used to acces columns, it's called "the accessor"
murders$population
#this is the same
population <- murders[["population"]]
#population
pop <- murders$population
length(pop)
class(pop)

class(murders$state)
#categorical data "factor"
class(murders$region)
levels(murders$region)