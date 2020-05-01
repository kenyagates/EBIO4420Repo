### Assessing lichen species as indicators of community type in the alpine tundra ###

# Loading required packages
library(tidyverse)
library(dplyr)

# Part 1: Subsetting data and creating species list for each class

# Reading in the original data file 
data <- read.csv("NSTL_2019_KGupdated.csv")

## 1a: Subsetting data by class
"Barren_plots" <- data[data$Class %in% c("Barren"), ]
"SB_plots" <- data[data$Class %in% c("Snow Bank"), ]
"WM_plots" <- data[data$Class %in% c("Wet Meadow"), ]
"MM_plots" <- data[data$Class %in% c("Moist Meadow"), ]
"DM_plots" <- data[data$Class %in% c("Dry Meadow"), ]
"FF_plots" <- data[data$Class %in% c("Fellfield"), ]


## 1b: Creating species list for each community class
"BP_Species" <- na.omit(as.character(unique(Barren_plots$Species, incomparables = F))) # Barren Species List

"SB_Species" <- na.omit(as.character(unique(SB_plots$Species, incomparables = F))) # Snow Bed Species List

"WM_Species" <- na.omit(as.character(unique(WM_plots$Species, incomparables = F))) # Wet Meadow Species List

"MM_Species" <- na.omit(as.character(unique(MM_plots$Species, incomparables = F))) # Moist Meadow Species List

"DM_Species" <- na.omit(as.character(unique(DM_plots$Species, incomparables = F))) # Dry Meadow List

"FF_Species" <- na.omit(as.character(unique(FF_plots$Species, incomparables = F))) # FellField Species List

# Creating a vector of all species 
"Total_Species" <- na.omit(as.character(unique(data$Species, incomparables = F)))


## 1c: exploreing some of the characteristics of the data 

"SpeciesN" <- length(Total_Species) # Assigning the number of species to a value

## determining how many plots are in each community class 

"BP_PlotN" <- length(as.integer(unique(Barren_plots$Plot, incomparables = F)))
"SB_PlotN" <- length(as.integer(unique(SB_plots$Plot, incomparables = F)))
"WM_PlotN" <- length(as.integer(unique(WM_plots$Plot, incomparables = F)))
"MM_PlotN" <- length(as.integer(unique(MM_plots$Plot, incomparables = F)))
"DM_PlotN" <- length(as.integer(unique(DM_plots$Plot, incomparables = F)))
"FF_PlotN" <- length(as.integer(unique(FF_plots$Plot, incomparables = F)))

# Part 2: Exploring the relationships between community classes in terms of their shared species

# 2a: For loop comparing how many shared species exist between each community class

# creating vector containers for shared species between community classes

"Matches_BP/SB" = c() 
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



## Dry meadow against fellfield 

"Matches_DM/FF" = c()



for (i in 1:length(DM_Species)) {
  for (j in 1:length(FF_Species)){
    if (DM_Species[i] == FF_Species[j]) { 
      `Matches_DM/FF`[length(`Matches_DM/FF`)+1] = c(DM_Species[i], i)
    }
  }
  
}



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

# 2b: Writing a function that prints all the classes that a given species is wound within 
## First, I'm going to merge all the species lists into a single dataframe 
### To do this, I'm going to pad each vector so they all have the same length of the longest one 

max.len = max(SpeciesN) # seeing how many total species there are (maximum possible length)

# padding each species vector
"BP" = c(BP_Species, rep(NA, max.len - length(BP_Species)))
"SB" = c(SB_Species, rep(NA, max.len - length(SB_Species)))
"WM" = c(WM_Species, rep(NA, max.len - length(WM_Species)))
"MM" = c(MM_Species, rep(NA, max.len - length(MM_Species)))
"DM" = c(DM_Species, rep(NA, max.len - length(DM_Species)))
"FF" = c(FF_Species, rep(NA, max.len - length(FF_Species)))

# creating a dataframe from the newly padded vectors 
"ClassSpecies" <- cbind(BP, SB, WM, MM, DM, FF)
as.data.frame(ClassSpecies)

## Writing a fuction that lists the community classes a species is found within when a species is plugged in 

find.sp.class <- function(species) {
  classes <- if (species %in% BP) {
    print("BP")
  }
  if (species %in% SB) {
    print("SB") 
  }
  if (species %in% WM) {
    print("WM") 
  }
  if (species %in% MM) {
    print("MM") 
  }
  if (species %in% DM) {
    print("DM") 
  }
  if (species %in% FF) {
    print("FF") 
  }
}

## Using the function to find species that fall within only 1-2 community class 

find.sp.class(Total_Species[1])
find.sp.class(Total_Species[2])
find.sp.class(Total_Species[3])
find.sp.class(Total_Species[4])
find.sp.class(Total_Species[5])
find.sp.class(Total_Species[6])
find.sp.class(Total_Species[7])
find.sp.class(Total_Species[8])
find.sp.class(Total_Species[9])
find.sp.class(Total_Species[10]) #
find.sp.class(Total_Species[11])
find.sp.class(Total_Species[12])
find.sp.class(Total_Species[13])
find.sp.class(Total_Species[14])
find.sp.class(Total_Species[15]) #
find.sp.class(Total_Species[16]) #
find.sp.class(Total_Species[17])
find.sp.class(Total_Species[18]) #
find.sp.class(Total_Species[19])
find.sp.class(Total_Species[20])
find.sp.class(Total_Species[21]) #

# From the results above, we can see that Total_Species[13], [19], and [20] only occur once, and we know which one it falls in 

# Species that fall in only 1 community class:
Total_Species[13] # Vulpicida tilesii (FF)
Total_Species[19] # Acarospora shleicheri (DM)
Total_Species[20] # Diploshistes scruposis (DM)

#Species that fall in 2 related community classes:
Total_Species[10] # Ochrolechia upsaliensis (DM) (FF)
Total_Species[15] # Flavocetraria cucullata (MM) (DM)
Total_Species[16] # Peltigera sp. (MM) (DM)
Total_Species[18] # Flavocetraria nivalis (MM) (DM)
Total_Species[21] # Megaspora verrucosa (MM) (DM)



# Part 3: Working with the species that plisplay high specificity 
## I'm going to begin by creating a new .csv file of the community classes that appeared to possess species with high habitat specificity and their species lists  

# Creating vectors to add to the Class tables below
"FF_desig" <- rep("FF", 21)  
"DM_desig" <- rep("DM", 21)
"MM_desig" <- rep("MM", 21)

## Creating a Table that includes significant species, classes in which they are found, and number of times they are observed in each class 

"FFtab" <- cbind(FF_desig, as.data.frame(table(FF_plots$Species))) # Fell Field table
"DMtab" <- cbind(DM_desig, as.data.frame(table(DM_plots$Species)))
"MMtab" <- cbind(MM_desig, as.data.frame(table(MM_plots$Species)))

# Writing FFtab into a .csv file

write_csv(FFtab, "SpeciesAbund.csv") # Writing FFtab into a .csv file

write.table(DMtab,file="SpeciesAbund.csv",sep=",",append=TRUE,row.names=FALSE,col.names=FALSE)

write.table(MMtab,file="SpeciesAbund.csv",sep=",",append=TRUE,row.names=FALSE,col.names=FALSE)



# Figuring out how frequently these species occur within their classes 

### Data was cleaned in the command line terminal to create "Better.csv" file

"cleandata" <- read.csv("Better.csv") # Reading in the newly created .csv file from the command line

"FF_sigspecies" <- cleandata[cleandata$Class %in% c("FF"),]
"DM_sigspecies" <- cleandata[cleandata$Class %in% c("DM"), ]
"MM_sigspecies" <- cleandata[cleandata$Class %in% c("MM"), ]


# Getting the percentage of plots in each given class that each species appears in 

"FF_indeces" <- (FF_sigspecies$Count)/FF_PlotN
"DM_indeces" <- (DM_sigspecies$Count)/DM_PlotN
"MM_indeces" <- (MM_sigspecies$Count)/MM_PlotN


# replacing count with abundance index

FF_sigspecies$Count <- FF_indeces 
FF_sigspecies 

DM_sigspecies$Count <- DM_indeces 
DM_sigspecies 

MM_sigspecies$Count <- MM_indeces 
MM_sigspecies 

# Generating a .csv file showing the most relevant species in order of abundance in their associated community classes 

write_csv((rbind(FF_sigspecies, DM_sigspecies, MM_sigspecies)) %>% arrange(desc(Count)), "FinalData.csv")


# Part 4: Creating a venn diagram graphic showing shared species in 5 classes
# loading the package 

library(gplots)
"X" <- list(
  "Fell Field" = FF_Species,
  "Snow Bed" = SB_Species,
  "Wet Meadow" = WM_Species,
  "Moist Meadow" = MM_Species,
  "Dry Meadow" = DM_Species)
venn(X, universe = NA)

