library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*100000

#using logical operators to index vectors
#get index for states with 0.71 murders
index <- murder_rate < 0.71#or <=
#get states for those indexes
murders$state[index]

sum(index)#the vector is coercerd to numeric

#west states with murder rate <= 1
west <- murders$region == "West"
safe <- murder_rate <= 1
index <- safe & west
murders$state[index]
