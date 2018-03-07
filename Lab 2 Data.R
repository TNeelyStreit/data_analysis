####CODE FOR LAB 3 USING BIOGEO DATA####
#R-studio already had uploaded my previous data from R so I didn't need to bring the data into the program# 
#as it was already there and named "biogeo"#
#first made sure that the name biogeo was still linked to the data set#
biogeo

#used attach() function to attach the data#
attach(biogeo)

#typed hist(pH) and program made a histogram of all pH data#
hist(pH)

#use boxplot function to summarize pH#
boxplot(pH)

#wanted more information about the boxplot so used boxplot.stats(pH) function#
boxplot.stats(pH)

#wanted information about pH to compare to the unlabed data given 
#from last function so used summary function#
summary(pH)

#put labels on boxplot#
boxplot(pH, data=biogeo, main="Boxplot of all pH Data",ylab="pH")

#make a second boxplot for pH by location#
boxplot(pH~location, data=biogeo, main="Boxplot of pH", xlab="location", ylab="pH")

#Show the stats for the new boxplot#
boxplot.stats(pH~location)
#didn't work#

#Scatter plot of plant richness and AM fungal richness using plot() function#
plot(plantrich,AMrich)

#Titled plot#
plot(plantrich,AMrich, main="Scatterplot of AM Richness by Plant Richness")

#add best-fit line with abline() function, list y axis first because ~ means y~(as a function of)x#
abline(lm(AMrich~plantrich), col="red")

#get the equation for linear model of AMrich by Plantrich, then had it show me fit#
fit<- lm(AMrich~plantrich, data=biogeo)
fit
