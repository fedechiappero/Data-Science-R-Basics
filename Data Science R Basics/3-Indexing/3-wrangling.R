# introducing DPLYR library
library(dslabs)
library(dplyr)
data(murders)

# MUTATE (adding new row or changing an existing one)
# arguments: (dataframe, name=value)
# this function looks for total and population in the dataframe so no murders$xxx is needed
murders <- mutate(murders, rate=total/population*100000)

# FILTER (filter data from subsetting rows)
# arguments: (dataframe, condition)
# same as before, rate is searched in the dataframe
filter(murders, rate <= 0.71)
# remove rows with !=
no_florida <- filter(murders, state != "Florida")

# SELECT (subset data selecting specific columns)
# arguments: (dataframe, column1, column2, columnN)
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)

#select filter columns, and filter, well, filter rows

# %>% (pipe operator) send results from one function to another function
# when use pip, dataframe is no longer specified since the function assumes that whatever is being piped is what should be operated on
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)