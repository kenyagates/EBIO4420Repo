# Problem 3

# 3a

"InitPop" <- 2500 # Initial population size
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

# 3b

log.growth <- function(InitPop, r, K, gen.num) { 
  FinalPop <- `InitPop`
  Abundance <- vector("numeric", gen.num)
  Generation <- seq(1:gen.num)
  for (i in 1:gen.num) {
    FinalPop <- (FinalPop + ( r * FinalPop * (K - FinalPop ) / K))
    Abundance[i] <- FinalPop 
    print(Abundance)
    # 3c
    plot(Generation, Abundance)
  }
}

# 3d

log.growth(2500, 0.8, 10000, 12)
Abundance
Generation <- seq(1:12)

# 3e

Gen.abund <- cbind(Generation, Abundance)
Gen.abund
write.csv(Gen.abund, "Lab08.csv")