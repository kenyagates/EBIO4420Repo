# 1.1: Writing a for loop to print "hi" in console 10x

for (i in seq(1, 10)) {
  print("hi")
}

# 1.2 
# Loading variables
"Allowance" <- 5 # Jimmy's parents give him $5 per week
"Gum" <- 2 # Gimmy buys 2 pack of gum per week
"Gum Price" <- 1.34 # Gum costs $1.34 per pack 
"Initial Money" <- 10 # Amount of money Jimmy starts with
"Final" <- `Initial Money`
for (i in seq(1, 8)) {
  Final <- Final + i
  print((`Final`+ Allowance - (Gum*`Gum Price`)))
}

# 1.3 
# Loading variables 
"Population" <- 2000 # number of individuals at year 0 
"Annual Change" <- 0.05
"FinalPop" <- Population
for (i in seq(1, 7)) {
  FinalPop <- (FinalPop - (FinalPop * (`Annual Change`)))
  print(FinalPop)
}

# 1.4
# Loading variables 
"InitPopulation" <- 2500 # Initial population size
"K" <- 10000 # Environmental carrying capacity
"r" <- 0.8 # intrinsic grouth rate 
"FinalPopulation" <- `InitPopulation`
for (i in seq(1, 12)) {
  FinalPopulation <- (FinalPopulation + ( r * FinalPopulation * (K - FinalPopulation ) / K))
   print(FinalPopulation) 
}

# Part 2

# 5a
"x" <- seq(1, 18)
x

#5b
for (i in x) {
  x[i] <- (3 * i)
   print(x[i])
}
x

#5c
"x" <- rep(0, 18)
x[1] <- 1
x


#5d

n <- 18
x <- rep(0, n)
x[1] <- 1
x
for (i in 2:n) {
  x[i] <- (1 + (2 * x[i-1]))
  print (x)
} 
x

#6

n <- 21
x <- rep(0, n)
x[1] <- 0
x[2] <- 1
x[3] <- 1
for (i in 3:n) {
  x[i] <- (x[i-1] + x[i-2])
  print (x)
}
x

#7

"InitPopulation" <- 2500 # Initial population size
"K" <- 10000 # Environmental carrying capacity
"r" <- 0.8 # intrinsic grouth rate 
"FinalPopulation" <- `InitPopulation`
"Abundance" <- vector("numeric", 12) # creating a container for abundance values
  # writing th for loop for abundance over 12 generations
  for (i in seq(1, 12)) {
  FinalPopulation <- (FinalPopulation + ( r * FinalPopulation * (K - FinalPopulation ) / K))
  Abundance[i] <- FinalPopulation 
}

"Time" <- seq(1, 12) # creating the time vector 

plot(Time, Abundance) # generating the plot Abundance over Time 


