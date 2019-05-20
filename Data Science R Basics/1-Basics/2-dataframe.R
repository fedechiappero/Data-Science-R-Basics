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


#create a dataframe with data.frame
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
#when create a dataframe strings are converted to factor, to avoid this type stringAsFactors = FALSE as last dataframe argument
