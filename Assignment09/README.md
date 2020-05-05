
# Assessing lichen species as indicators of community type in the alpine tundra 

## Introduction

In this project, I am seeking to determine which (if any) lichen species are useful as indicators of community class within a region of diverse alpine tundra. The study site is located at Niwot Ridge Long-Term Ecological Research site outside Nederland, CO, and has facilitated ongoing and short-term research since 1980. One of their main projects in an annual survey in the "saddle grid," a series of 88 1m^2 plots. Plant community characteristics are monitered in an effort to study ecological changes over time, but lichen data has been excluded from this effort. To supplement this, a colleague and I have conducted a lichen-specific survey in the same plots to add this data to the overall record. 

Within the survey area, there are six overarching community classes displaying distinct abiotic and biotic characteristics. Many of them have specific plant species that are considered indicators of that class, such as cushion plants in the fellfield and marsh marigolds in the moist meadows. I am looking to see if there are lichen species that are similarly niche-specific, or if the differences in the functional biology of lichens preclude them from displaying the same patterns of habitat specificity that plants exhibit.

******

## Summary of Data to be Analyzed 
The data I will be using fo this project is lichen abundance and species composition data collected in 2018 and 2019 by Gates & Weber, along with Niwot Ridge LTER's [community type datasets](https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-nwt.16.4) for the same grid plots where lichen data was collected. Plant community classification in these long-term studies is based on Net Primary Productivity, soil depth, soil moisture, and community composition. Although the dataset includes annual survey results dating from 1992-present, For the purpose of this project, only the 2019 data will be used.  

The original goals of the Gates & Weber survey were to add data on lichens to the LTER's tong-term vegetation survey, as well as to examine the influences of biotic and abiotic factors on lichen community assembly. Abundance and community composition data were obtained by using visual estimates of percent cover within each of 88 1m^2 quadrants and lichen species were identified based on macro- and microscopic morphology and chemical spot tests. 

All data are formatted as .csv files, with long-term data available through Niwot Ridge LTER's freely accessible data catalogue. In preparation for this project, the community class data for the 88 grid plots was merged with the lichen data, so the resulting file is comprised of approx. 250 rows and 5 columns: "Plot", "Class", "Species", "Cover", and "Presence." 

Some potentially problematic qualities of the data are the spaces between the words in a cell entry; i.e. "Dry Meadow" or "Xanthoparmelia chlorochroa." However, so far I have not run into any major roadblocks because of this issue in the tasks I've done so far in data parsing. There are also some plots without entries for species and cover (namely the "Barren" class, which, as the name implies, is characterized by a lack of plant life), but this issue will be easily resolved by just removing these plots from the analysis. 

**************
## Description of Analysis 

1. Parse dataset by community class and generate species list for each class
2. Compare species list between each class 
* possibly use cross-tabulation to create a table showing each species and which community classes it is listed under 
3. Based on the results of step 2, begin working with the species that appear to demonstrate high specificity; i.e., occur in 1-3 similar classes
- to test for significance, Present/Absent data for each species in each community class can be summed up and divided by the total number of plots in that class, returning a value between 0 and 1. This gives us an idea of how prolific that species is within that class and allows us to ignore "rare" species that could skew results. Ideally, indicator species are found in more that 65% of plots of a certain class, and in less than 10% of plots of other classes. However, the highest frequency we observed in a species with high habitat specificity was around 57%, and the frequencies for the remaining species were much lower
- by the end of this step, I produced a list of species with high habitat specificity and the rates at which they occur in their respective classes. 
- I also produced a Venn diagram showing how many species were shared between each of five community classes (found at the link below).
(https://photos.app.goo.gl/5Y7oad3ZnLY64HqKA)
![alt text](https://github.com/kenyagates/EBIO4420Repo/blob/master/Assignment09/VennGraphic.jpeg?raw=true)




## References 


-   Walker, M., J. Smith, H. Humphries, and Niwot Ridge LTER. 2019. Aboveground net primary productivity data for Saddle grid, 1992 - ongoing. ver 4. Environmental Data Initiative. https://doi.org/10.6073/pasta/34b6a7bbe47f9398ff7f5a748f90e838. Accessed 2020-04-13.
 
> Written with [StackEdit](https://stackedit.io/).
