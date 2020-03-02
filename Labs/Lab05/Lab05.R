# Lab05 
# Part 1
# 1

x <- 6 # Assigning a numericl value to variable "x"
if (x > 5) {
  print("GOOD")
      } else {
    print("BAD")
  } # Constructing a conditional to determine if 6 is "Good" (greater than 5) or "Bad" (less than 5)

# 2a
"ExData" <- ExampleData

ExDataVec <- ExampleData[[1]]
ExDataVec  
for (i in 1:length(ExDataVec)) {
  if (ExDataVec[i] < 0) {
    ExDataVec[i] <- NA 
  }
 
}

ExDataVec

# 2b

ExDataVec[is.na(ExDataVec)] <- NaN


# 2c

ExDataVec[which(is.na(ExDataVec))] <- 0


# 2d

sum(ExDataVec <= 100 & ExDataVec >= 50)  

# 2e

"FiftyToOneHundred" <- ExDataVec[which(ExDataVec <= 100 & ExDataVec >= 50)]
str(FiftyToOneHundred)

# 2f

write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred.csv")

# 3 

"C02_Data" <- read.csv("Lab04/CO2_data_cut_paste.csv")

# 3a
"FirstNonZeroDay" <- which(C02_Data$Gas != 0)
FirstNonZeroDay
"FirstNonZeroYear" <- C02_Data$Year[FirstNonZeroDay[1]]
FirstNonZeroYear

# 3b

"Years" <- C02_Data$Year[which(C02_Data$Total >= 200 & C02_Data$Total <= 300)]
Years

# Part II

"totalGenerations" <- 1000 # number of generations
"initPrey" <- 100 	# initial prey abundance at time t = 1
"initPred" <- 10		# initial predator abundance at time t = 1
"a" <- 0.01 		# attack rate
"r" <- 0.2 		# growth rate of prey
"m" <- 0.05 		# mortality rate of predators
"k" <- 0.1 		# conversion constant of prey into predators
"n" <- rep(initPrey, totalGenerations) # assigning a vector for prey pop
"p" <- rep(initPred, totalGenerations) # assigning a vecter for pred pop

# writing a for loop to model pred/prey populations over 1000 generations

for (i in (2:totalGenerations)) {
  n[i] <- (n[i-1] + (r * n[i-1]) - (a * n[i-1] * p[i-1])) # eq for prey pop
  p[i] <- p[i-1] + (k * a * n[i-1] * p[i-1]) - (m * p[i-1]) # eq for pred pop
  if ((n[i]) < 0 )
    n[i] <- 0 
  print(n[i]) 
  if ((p[i]) < 0 )
    p[i] <- 0
  print(p[i]) 
  }

# graphing pred/prey populations over time

plot((1:1000), n) 
lines((1:1000), p)

# creating a matrix of pred/prey abundance

"myResults" <- cbind(c(1:totalGenerations), c(n), c(p))
colnames(myResults) <- c("TimeStep", "PreyAbundance", "PredAbundance")
# writing a .csv of the pred/prey abundance matrix
write.csv(x = myResults, file = "PredPreyResults.csv")
