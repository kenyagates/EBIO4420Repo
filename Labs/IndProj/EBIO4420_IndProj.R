library(tidyverse)
library(dplyr)

data <- read.csv("NSTL_2019_KGupdated.csv")

# probably need to change plot names to make compatable: community class data is 101 format; Lichen data is 10A format 
# probably need to eliminate spaces in entries 

## subsetting data by class
"Barren_plots" <- data[data$Class %in% c("Barren"), ]
"SB_plots" <- data[data$Class %in% c("Snow Bank"), ]
"WM_plots" <- data[data$Class %in% c("Wet Meadow"), ]
"MM_plots" <- data[data$Class %in% c("Moist Meadow"), ]
"DM_plots" <- data[data$Class %in% c("Dry Meadow"), ]
"FF_plots" <- data[data$Class %in% c("Fellfield"), ]



## creating species list for each community class
"BP_Species" <- as.character(unique(Barren_plots$Species, incomparables = F)) # Barren Species List
"SB_Species" <- as.character(unique(SB_plots$Species, incomparables = F)) # Snow Bed Species List
"WM_Species" <- as.character(unique(WM_plots$Species, incomparables = F)) # Wet Meadow Species
"MM_Species" <- as.character(unique(MM_plots$Species, incomparables = F)) # Moist Meadow Species
"DM_Species" <- as.character(unique(DM_plots$Species, incomparables = F)) # Dry Meadow 
"FF_Species" <- as.character(unique(FF_plots$Species, incomparables = F)) # FellField 

# How many species are in each plot?

"BP_SpeciesN" <- length(as.integer(BP_Species))
"SB_SpeciesN" <- length(as.integer(SB_Species))
"WM_SpeciesN" <- length(as.integer(WM_Species))
"MM_SpeciesN" <- length(as.integer(MM_Species))
"DM_SpeciesN" <- length(as.integer(DM_Species))
"FF_SpeciesN" <- length(as.integer(FF_Species))

"SpeciesN" <- c(BP_SpeciesN, SB_SpeciesN, WM_SpeciesN, MM_SpeciesN, DM_SpeciesN, FF_SpeciesN)
typeof(SpeciesN)



## determining how many plots are in each community class 

"BP_PlotN" <- length(as.integer(unique(Barren_plots$Plot, incomparables = F)))
"SB_PlotN" <- length(as.integer(unique(SB_plots$Plot, incomparables = F)))
"WM_PlotN" <- length(as.integer(unique(WM_plots$Plot, incomparables = F)))
"MM_PlotN" <- length(as.integer(unique(MM_plots$Plot, incomparables = F)))
"DM_PlotN" <- length(as.integer(unique(DM_plots$Plot, incomparables = F)))
"FF_PlotN" <- length(as.integer(unique(FF_plots$Plot, incomparables = F)))

"Plot#" <- c(BP_PlotN, SB_PlotN, WM_PlotN, MM_PlotN, DM_PlotN, FF_PlotN) # creating a vector of the number of plots per community class


# Creating a vector of total species 

"Total_Species" <- as.character(unique(data$Species, incomparables = F))
Total_Species <- na.omit(Total_Species)

# Creating a for loop to compare species lists between comunity classes 

## Comparing Barren Vs. others 

 
"Matches_BP/SB" = c() # trying to create a vector container

# For loop comparing between Barren and Snow Bed plots \

for (i in 1:length(BP_Species)) {
  for (j in 1:length(SB_Species)){
    if (BP_Species[i] == SB_Species[j]) { 
      `Matches_BP/SB`[length(`Matches_BP/SB`)+1] = c(BP_Species[i], i)
    }
  }
}
`Matches_BP/SB`

# For loop comparing between Barren and Wet Meadow plots 

"Matches_BP/WM" = c() # trying to create a vector container

# For loop comparing between Barren and Wet Meadow plots \
for (i in 1:length(BP_Species)) {
  for (j in 1:length(WM_Species)){
    if (BP_Species[i] == WM_Species[j]) { 
      `Matches_BP/WM`[length(`Matches_BP/WM`)+1] = c(BP_Species[i], i)
    }
  }
}
`Matches_BP/WM`
# Between Barren and Moist Meadow

"Matches_BP/MM" = c() # trying to create a vector container
# For loop comparing between Barren and Snow Bed plots \
for (i in 1:length(BP_Species)) {
  for (j in 1:length(MM_Species)){
    if (BP_Species[i] == MM_Species[j]) { 
      `Matches_BP/MM`[length(`Matches_BP/MM`)+1] = c(BP_Species[i], i)
    }
  }
}
`Matches_BP/MM`

# Between Barren and Dry Meadow  

"Matches_BP/DM" = c() # trying to create a vector container
# For loop comparing between Barren and Snow Bed plots \
for (i in 1:length(BP_Species)) {
  for (j in 1:length(DM_Species)){
    if (BP_Species[i] == DM_Species[j]) { 
      `Matches_BP/DM`[length(`Matches_BP/DM`)+1] = c(BP_Species[i], i)
    }
  }
}
`Matches_BP/DM`

# Barren vs. Fellfield

"Matches_BP/FF" = c() # trying to create a vector container
# For loop comparing between Barren and Fellfield
for (i in 1:length(BP_Species)) {
  for (j in 1:length(FF_Species)){
    if (BP_Species[i] == FF_Species[j]) { 
      `Matches_BP/FF`[length(`Matches_BP/FF`)+1] = c(BP_Species[i], i)
    }
  }
}
`Matches_BP/FF`



