# Lab step #3 Number of chip bags at start of party
"Chip Bags" <- 5
# Number of guests attending party
"Guests" <- 8
# Lab step #5 Average bags of chips eaten per guest
"x" <- 0.4
# Lab step #7: Calculating how many chip bags will be left over
(`Guests` * x)
((`Chip Bags`-(Guests * x))) - 0.4
 

# Part II
# Lab step #8: Creating vectors for the rankings  of Star Wars episodes
Self <- c(7, 9, 8, 1, 2, 3, 4, 5, 5)
Penny <- c(5, 9, 8, 3, 1, 2, 4, 7, 6)
Lenny <- c(6, 5, 4, 9, 8, 7, 3, 2, 1)
Stewie <- c(1, 9, 5, 6, 8, 7, 2, 3, 4)
# Lab step #9: indexing ranking for episode IV
"PennyIV" <- Penny[4]
Penny[4]
"LennyIV" <- Lenny[4]
# Lab step 10: concatinating all four vectors of rankings
"Data Matrix from cbind" <- cbind(Self, Penny, Lenny, Stewie)

str(PennyIV)
str(Penny)
str(`Data Matrix`)
# In Penny IV, we have a single value. In Penny, we have a vector of values from 1-9. In Data Matrix, we have a matrix comprised of four columns and 9 rows, with the names of the guests as column headers. 

# Lab step 12: making a data frame from the given vectors 
"Data Matrix from data.frame" <- data.frame(Self, Penny, Lenny, Stewie)
as.data.frame(`Data Matrix from cbind`)
# You can't give as.data.frame a list of vectors, you have to give it something that already looks like a matrix

dim(`Data Matrix from cbind`)
dim(`Data Matrix from data.frame`)
# Shows that you have the same number of columns and rows in each one 

str(`Data Matrix from cbind`)
str(`Data Matrix from data.frame`)
# Data.frame produces a data frame object, whereas cbind indicates that it is a numerical object 

typeof(`Data Matrix from cbind`)
typeof(`Data Matrix from data.frame`)
# Cbind is is "double," data.frame is a "list"

# Lab step 14: Assigning Episode names a vector
"Episode" <- c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX")
row.names.data.frame(`Data Matrix from data.frame`)
help("row.names")
row.names(`Data Matrix from data.frame`) <- Episode

# Lab step 16: accessing specific elements 
`Data Matrix from cbind`[3,]
`Data Matrix from cbind`[,4]
`Data Matrix from cbind`[5,1]
`Data Matrix from cbind`[5,2]

`Data Matrix from cbind`[4:6,]
`Data Matrix from cbind`[c(2, 5, 7),]
`Data Matrix from cbind`[c(4, 6), c(2, 4)]

# Lab step 23: switching values
`Data Matrix from cbind`[c(2, 5), 3]
`Data Matrix from cbind`[2, 3] <- 8
`Data Matrix from cbind`[2, 3]
`Data Matrix from cbind`[5, 3] <- 5
`Data Matrix from cbind`[5, 3]

`Data Matrix from data.frame`["III", "Penny"]
`Data Matrix from data.frame`["II", "Lenny"] <- 5
`Data Matrix from data.frame`["V", "Lenny"] <- 8
rankings$Lenny[2]
`Data Matrix from data.frame`$Lenny 
`Data Matrix from data.frame`$Lenny[2] <- 5
`Data Matrix from data.frame`$Lenny[5] <- 8

