## Use the library() function to load the dplyr package.
library("dplyr")

## Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_mpg <-read.csv(file='desktop/class/MechaCar_Statistical_analysis/MechaCar_mpg.csv',check.names = F,stringsAsFactors =F)

## Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg)

## xUsing the summary() function, determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_mpg))

## In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Suspension<-read.csv(file = 'desktop/class/MechaCar_Statistical_analysis/Suspension_coil.csv',check.names = F,stringsAsFactors = F)

## Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

## total_summary

## Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <-Suspension %>% group_by(Manufacturing_Lot)%>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary

## RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension$PSI,mu=1500)

## write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

t.test(subset(Suspension,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

t.test(subset(Suspension,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
