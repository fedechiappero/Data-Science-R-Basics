#create a vector (c=concatenate or combine)
codes <- c(380,124,818)
country <- c("Italy", "Canada", "Egypt")
codes <- c(italy=380, canada=124, egypt=818)#also can define names between ""

#assing names to existing vector
codes <- c(380,124,818)
country <- c("Italy", "Canada", "Egypt")
names(codes) <- country

#secuence (start, end, default increment = 1)
seq(1,10)
seq(1,10,2)

#accessing the vector
#just 2nd
codes[2]
#1st and 3rd
codes[c(1,3)]
#from 1 to 2
codes[1:2]
#using names
codes["Canada"]
codes[c("Italy", "Egypt")]
