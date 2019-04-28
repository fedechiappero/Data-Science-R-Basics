population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
#scatterplot(x,y) dispersion
plot(population_in_millions, total_gun_murders)

#dots when population < 5 are overhead, so we apply log10, and we don't divide by million
plot(log10(murders$population), log10(total_gun_murders))

#histogram
hist(murders$rate)

#which state has more than 15 rate?
murders$state[which.max(murders$rate)]

#check if first column hist is correct
count(filter(murders, rate >= 0 & rate <2))

#boxplot (state by region)
boxplot(rate~region, data = murders)
