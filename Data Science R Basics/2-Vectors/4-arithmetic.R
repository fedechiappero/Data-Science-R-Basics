#state with most murders
murders$state[which.max(murders$population)]
max(murders$population)

#convert inches vector to centimeters vector
heights <- c(69, 62, 66, 70, 70, 73, 67, 73, 67, 70)
heights * 2.54
#difference with the average 69
heights - 69


#get murders for every 100000 ppl of each state
murder_rate <- murders$total/murders$population*100000
murder_rate
murders$state[order(murder_rate, decreasing = TRUE)]