x <- c(1, "canada", 3)
# 1 and 3 will be converted to "1" and "3"
#that means R coerced the data, guessing that putting a character in the middle, we meant all the items be character
class(x)

#forcing coercion
x <- 1:5
#typecasting
y <- as.character(x)
x <- as.numeric(y)

# NA = Not Available
#when an item can't be converted it will be replaced by NA
x <- c("1", "b", "3")
as.numeric(x)