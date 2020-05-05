## Lab 08
### Writing a function to generate a logistic growth model in R

In this lab, I am writing a function that models the logistic growth of a population over a number of generations using the equation `n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )`, where `n[t]` is the abundance of the population at time `t`, `n[t – 1]` is the abundance of the population in the previous time step, `r` is the intrinsic growth rate of the population, and `K` is the environmental carrying capacity for the population ([source here](https://github.com/flaxmans/CompBio_on_git/blob/master/Labs/Lab04/Lab04_ForLoops.md)). 



To begin, we'll start name the function and define the parameter values to be used
`log.growth <- function(InitPop, r, K, gen.num) { `
where `InitPop` = initial population, `r` = the intrinsic growth rate, `K` = carrying capacity, and `gen.num` is the total number of generations. 

In the next few lines, we'll define some variables that will be used inside the function 
`FinalPop <- InitPop
Abundance <- vector("numeric", gen.num)
  Generation <- seq(1:gen.num)`

Next, we write the for loop that calculates the population for each generation and prints it to the console: 
`for (i in 1:gen.num) {
    FinalPop <- (FinalPop + ( r * FinalPop * (K - FinalPop ) / K))
    Abundance[i] <- FinalPop 
    print(Abundance)`
    
and then plots Abundance vs. Generation:
`plot(Generation, Abundance)
  }
}`

So the entire function reads as follows:
`log.growth <- function(InitPop, r, K, gen.num) { 
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
}`

For this example, I'll be calling the function with initial data inputs of `Initpop = 2500`, `r = 0.8`, `K = 10000`, and `gen.num = 12`. 

The following plot is visualized:

![Lab 08 R Plot](https://photos.app.goo.gl/SV4cvFX7gXY4qJp17)

