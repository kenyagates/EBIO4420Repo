---


---

<h1 id="assessing-lichen-species-as-indicators-of-community-type-in-the-alpine-tundra">Assessing lichen species as indicators of community type in the alpine tundra</h1>
<h2 id="introduction">Introduction</h2>
<p>In this project, I am seeking to determine which (if any) lichen species are useful as indicators of community class within a region of diverse alpine tundra. The study site is located at Niwot Ridge Long-Term Ecological Research site outside Nederland, CO, and has facilitated ongoing and short-term research since 1980. One of their main projects in an annual survey in the “saddle grid,” a series of 88 1m^2 plots. Plant community characteristics are monitered in an effort to study ecological changes over time, but lichen data has been excluded from this effort. To supplement this, a colleague and I have conducted a lichen-specific survey in the same plots to add this data to the overall record.</p>
<p>Within the survey area, there are six overarching community classes displaying distinct abiotic and biotic characteristics. Many of them have specific plant species that are considered indicators of that class, such as cushion plants in the fellfield and marsh marigolds in the moist meadows. I am looking to see if there are lichen species that are similarly niche-specific, or if the differences in the functional biology of lichens preclude them from displaying the same patterns of habitat specificity that plants exhibit.</p>
<hr>
<h2 id="summary-of-data-to-be-analyzed">Summary of Data to be Analyzed</h2>
<p>The data I will be using fo this project is lichen abundance and species composition data collected in 2018 and 2019 by Gates &amp; Weber, along with Niwot Ridge LTER’s <a href="https://portal.edirepository.org/nis/mapbrowse?packageid=knb-lter-nwt.16.4">community type datasets</a> for the same grid plots where lichen data was collected. Plant community classification in these long-term studies is based on Net Primary Productivity, soil depth, soil moisture, and community composition. Although the dataset includes annual survey results dating from 1992-present, For the purpose of this project, only the 2019 data will be used.</p>
<p>The original goals of the Gates &amp; Weber survey were to add data on lichens to the LTER’s tong-term vegetation survey, as well as to examine the influences of biotic and abiotic factors on lichen community assembly. Abundance and community composition data were obtained by using visual estimates of percent cover within each of 88 1m^2 quadrants and lichen species were identified based on macro- and microscopic morphology and chemical spot tests.</p>
<p>All data are formatted as .csv files, with long-term data available through Niwot Ridge LTER’s freely accessible data catalogue. In preparation for this project, the community class data for the 88 grid plots was merged with the lichen data, so the resulting file is comprised of approx. 250 rows and 5 columns: “Plot”, “Class”, “Species”, “Cover”, and “Presence.”</p>
<p>Some potentially problematic qualities of the data are the spaces between the words in a cell entry; i.e. “Dry Meadow” or “Xanthoparmelia chlorochroa.” However, so far I have not run into any major roadblocks because of this issue in the tasks I’ve done so far in data parsing. There are also some plots without entries for species and cover (namely the “Barren” class, which, as the name implies, is characterized by a lack of plant life), but this issue will be easily resolved by just removing these plots from the analysis.</p>
<hr>
<h2 id="description-of-analysis">Description of Analysis</h2>
<ol>
<li>Parse dataset by community class and generate species list for each class</li>
<li>Compare species list between each class</li>
</ol>
<ul>
<li>possibly use cross-tabulation to create a table showing each species and which community classes it is listed under</li>
</ul>
<ol start="3">
<li>Based on the results of step 2, begin working with the species that appear to demonstrate high specificity; i.e., occur in 1-3 similar classes</li>
</ol>
<ul>
<li>to test for significance, Present/Absent data for each species in each community class can be summed up and divided by the total number of plots in that class, returning a value between 0 and 1. This gives us an idea of how prolific that species is within that class and allows us to ignore “rare” species that could skew results. Ideally, indicator species are found in more that 65% of plots of a certain class, and in less than 10% of plots of other classes.</li>
<li>by the end of this step, we should have a list of species with high habitat specificity and the rates at which they occur in their respective classes.</li>
</ul>
<h2 id="references">References</h2>
<ul>
<li>Walker, M., J. Smith, H. Humphries, and Niwot Ridge LTER. 2019. Aboveground net primary productivity data for Saddle grid, 1992 - ongoing. ver 4. Environmental Data Initiative. <a href="https://doi.org/10.6073/pasta/34b6a7bbe47f9398ff7f5a748f90e838">https://doi.org/10.6073/pasta/34b6a7bbe47f9398ff7f5a748f90e838</a>. Accessed 2020-04-13.</li>
</ul>
<blockquote>
<p>Written with <a href="https://stackedit.io/">StackEdit</a>.</p>
</blockquote>

