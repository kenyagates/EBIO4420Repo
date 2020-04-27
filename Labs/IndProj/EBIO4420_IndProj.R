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
SpeciesN
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

Total_Species

## For loop comparing barren plots species lists with all other community class species lists  

"Matches_BP/SB" = c() # trying to create a vector container
"Matches_BP/WM" = c()
"Matches_BP/MM" = c()
"Matches_BP/DM" = c()
"Matches_BP/FF" = c()



for (i in 1:length(BP_Species)) {
  for (j in 1:length(SB_Species)){
    if (BP_Species[i] == SB_Species[j]) { 
      `Matches_BP/SB`[length(`Matches_BP/SB`)+1] = c(BP_Species[i], i) 
    }
  } 
    for (j in 1:length(WM_Species)){
      if (BP_Species[i] == WM_Species[j]) { 
        `Matches_BP/WM`[length(`Matches_BP/WM`)+1] = c(BP_Species[i], i)
      }
    } 
    for (j in 1:length(MM_Species)){
      if (BP_Species[i] == MM_Species[j]) { 
        `Matches_BP/MM`[length(`Matches_BP/MM`)+1] = c(BP_Species[i], i)
      }
    }
    for (j in 1:length(DM_Species)){
    if (BP_Species[i] == DM_Species[j]) { 
      `Matches_BP/DM`[length(`Matches_BP/DM`)+1] = c(BP_Species[i], i)
      }
    }
    for (j in 1:length(FF_Species)){
    if (BP_Species[i] == FF_Species[j]) { 
      `Matches_BP/FF`[length(`Matches_BP/FF`)+1] = c(BP_Species[i], i)
    }
  }
  
  }

`Matches_BP/SB`
`Matches_BP/WM`
`Matches_BP/MM`
`Matches_BP/DM`
`Matches_BP/FF`


## Now for Snow Bed plots vs. remaining

# creating vector containers

"Matches_SB/WM" = c()
"Matches_SB/MM" = c()
"Matches_SB/DM" = c()
"Matches_SB/FF" = c()



for (i in 1:length(SB_Species)) {
  for (j in 1:length(WM_Species)){
    if (SB_Species[i] == WM_Species[j]) { 
      `Matches_SB/WM`[length(`Matches_SB/WM`)+1] = c(SB_Species[i], i)
    }
  } 
  for (j in 1:length(MM_Species)){
    if (SB_Species[i] == MM_Species[j]) { 
      `Matches_SB/MM`[length(`Matches_SB/MM`)+1] = c(SB_Species[i], i)
    }
  }
  for (j in 1:length(DM_Species)){
    if (SB_Species[i] == SB_Species[j]) { 
      `Matches_SB/DM`[length(`Matches_SB/DM`)+1] = c(SB_Species[i], i)
    }
  }
  for (j in 1:length(FF_Species)){
    if (SB_Species[i] == FF_Species[j]) { 
      `Matches_SB/FF`[length(`Matches_SB/FF`)+1] = c(SB_Species[i], i)
    }
  }
  
}

`Matches_SB/WM`
`Matches_SB/MM`
`Matches_SB/DM`
`Matches_SB/FF`


## Wet Meadow vs. remaining

# creating vector containers

"Matches_WM/MM" = c()
"Matches_WM/DM" = c()
"Matches_WM/FF" = c()



for (i in 1:length(WM_Species)) {
  for (j in 1:length(MM_Species)){
    if (WM_Species[i] == MM_Species[j]) { 
      `Matches_WM/MM`[length(`Matches_WM/MM`)+1] = c(WM_Species[i], i)
    }
  }
  for (j in 1:length(DM_Species)){
    if (WM_Species[i] == DM_Species[j]) { 
      `Matches_WM/DM`[length(`Matches_WM/DM`)+1] = c(WM_Species[i], i)
    }
  }
  for (j in 1:length(FF_Species)){
    if (WM_Species[i] == FF_Species[j]) { 
      `Matches_WM/FF`[length(`Matches_WM/FF`)+1] = c(WM_Species[i], i)
    }
  }
  
}

`Matches_WM/MM`
`Matches_WM/DM`
`Matches_WM/FF`
 

## Moist Meadow vs remaining 

"Matches_MM/DM" = c()
"Matches_MM/FF" = c()



for (i in 1:length(MM_Species)) {
  for (j in 1:length(DM_Species)){
    if (MM_Species[i] == DM_Species[j]) { 
      `Matches_MM/DM`[length(`Matches_MM/DM`)+1] = c(MM_Species[i], i)
    }
  }
  for (j in 1:length(FF_Species)){
    if (MM_Species[i] == FF_Species[j]) { 
      `Matches_MM/FF`[length(`Matches_MM/FF`)+1] = c(MM_Species[i], i)
    }
  }
  
}

`Matches_MM/DM`
`Matches_MM/FF`

## Dry meadow against fellfield 

"Matches_DM/FF" = c()



for (i in 1:length(DM_Species)) {
  for (j in 1:length(FF_Species)){
    if (DM_Species[i] == FF_Species[j]) { 
      `Matches_DM/FF`[length(`Matches_DM/FF`)+1] = c(DM_Species[i], i)
    }
  }
  
}

`Matches_DM/FF`

# Showing all vectors of class species matches 

`Matches_BP/SB`
`Matches_BP/WM`
`Matches_BP/MM`
`Matches_BP/DM`
`Matches_BP/FF`
`Matches_SB/WM`
`Matches_SB/MM`
`Matches_SB/DM`
`Matches_SB/FF`
`Matches_WM/MM`
`Matches_WM/DM`
`Matches_WM/FF`
`Matches_MM/DM`
`Matches_MM/FF`
`Matches_DM/FF`

# as length?


"Matches_BP/SB_length" <- length(as.integer(unique(`Matches_BP/SB`, incomparables = F)))
"Matches_BP/WM_length" <- length(as.integer(unique(`Matches_BP/WM`, incomparables = F)))
"Matches_BP/MM_length" <- length(as.integer(unique(`Matches_BP/MM`, incomparables = F)))
"Matches_BP/DM_length" <- length(as.integer(unique(`Matches_BP/DM`, incomparables = F)))
"Matches_BP/FF_length" <- length(as.integer(unique(`Matches_BP/FF`, incomparables = F)))
"Matches_SB/WM_length" <- length(as.integer(unique(`Matches_SB/WM`, incomparables = F)))
"Matches_SB/MM_length" <- length(as.integer(unique(`Matches_SB/MM`, incomparables = F)))
"Matches_SB/DM_length" <- length(as.integer(unique(`Matches_SB/DM`, incomparables = F)))
"Matches_SB/FF_length" <- length(as.integer(unique(`Matches_SB/FF`, incomparables = F)))
"Matches_WM/MM_length" <- length(as.integer(unique(`Matches_WM/MM`, incomparables = F)))
"Matches_WM/DM_length" <- length(as.integer(unique(`Matches_WM/DM`, incomparables = F)))
"Matches_WM/FF_length" <- length(as.integer(unique(`Matches_WM/FF`, incomparables = F)))
"Matches_MM/DM_length" <- length(as.integer(unique(`Matches_MM/DM`, incomparables = F)))
"Matches_MM/FF_length" <- length(as.integer(unique(`Matches_MM/FF`, incomparables = F)))
"Matches_DM/FF_length" <- length(as.integer(unique(`Matches_DM/FF`, incomparables = F)))
`Matches_BP/SB_length`
`Matches_BP/WM_length`
`Matches_BP/MM_length`
`Matches_BP/DM_length`
`Matches_BP/FF_length`
`Matches_SB/WM_length`
`Matches_SB/MM_length`
`Matches_SB/DM_length`
`Matches_SB/FF_length`
`Matches_WM/MM_length`
`Matches_WM/DM_length`
`Matches_WM/FF_length`
`Matches_MM/DM_length`
`Matches_MM/FF_length`
`Matches_DM/FF_length`
