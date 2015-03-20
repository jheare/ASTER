#Aster Summary
##Project 
In an effort to produce an analysis of our reproduction and mortality data to define differences between populations and derive statistical inferences about local adaptation. One such method is to use the aster model which unlike linear and general linear models uses compounding effects of mortality on reproduction to derive information about fitness. I have investigated the use of the aster model to determine if it is right for the data we have. 
##Aster Background
The aster model was developed to investigate fitness which is typically difficult to quantify and create a statistical model that can account for compounding effects of fitness components. The two most important fitness components in the aster model is survival and reproduction. Survival of an individual directly impacts its future ability to reproduce which equals overall fitness of an individual. Most systems such as linear (LM) and general linear models (GLM) only investigate either mortality or reproduction which cannot statistically support any conclusions about fitness due to the interdependence of the two. Aster models were originally used to model the fitness of a prairie grass that existed in remnant populations. The aster model has been used in many other species to analyze differences in fitness explored in common garden and reciprocal transplant experiments. One arabidopsis species was used in a reciprocal transplant experiment in Europe. The researchers found a statistically significant difference in the transplanted populations with local populations being more fit than the introduced populations. It is for these reasons that I want to use the aster model with my data as it could potentially produce viable information about local adaptation in *Ostrea lurida*. 
##What Oly Data Works with Aster
The data we've collected from the previous year about the three reciprocally transplanted populations in Puget Sound, WA has all the necessary parts to function with the aster package. The aster package requires three semi-dependent sets of data. First it needs mortality information for use with survival analysis. Next it requires some binary measure of reproductive activity. Finally it needs continuous data for reproduction such as number of seeds produced. We have mortality information for the year which is already in the binary data format. We have brooding female numbers for the year as well with a little bit of manipulation can be made into binary data. We also have counts of larvae which works as continuous data about reproduction. 
##What Does Not Work with Aster
The aster model was developed to analyze multiyear data sets with annual variation for the data set. Since our data is only for a single year, the variation in the data is too limited for use with the aster model from what I can tell.
##Decision
At this time I don't believe that the aster package can be used to a good effect to determine relative fitness of the three populations at the sites. I'll continue working with the aster material if I can figure out how to make it work for single year data. 

You can see my R script [here](https://github.com/jheare/ASTER/blob/master/OlyAsterAttempt.R).