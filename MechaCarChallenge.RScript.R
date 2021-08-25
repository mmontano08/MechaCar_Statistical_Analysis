>#Delivery #1
  library(dplyr)
options(scipen = 999)
# Import and read in the MechaCar_mpg.csv file as a data frame.
prototypes_data <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #read in dataset
head(prototypes_data)
# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns),
# Make sure your data meet the assumptions. ...
ggplot(prototypes_data,aes(x=mpg)) + geom_density() #visualize distribution using density plot
prototypes_matrix <- as.matrix(prototypes_data[,c("vehicle_length","vehicle_weight","spoiler_angle", "ground_clearance", "AWD", "mpg")]) #convert data frame into numeric matrix
cor(prototypes_matrix)
# Perform the linear regression analysis. ...
# and add the dataframe you created in Step 4 as the data parameter.
mpg_model <- lm(mpg ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + vehicle_length,data=prototypes_data) #generate multiple linear regression model
# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(mpg_model)
#summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=prototypes_data)) #generate summary statics
# Save your MechaCarChallenge.RScript file to your GitHub repository.
# Ok.

