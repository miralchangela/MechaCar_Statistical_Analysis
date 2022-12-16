# import library
library(tidyverse) 

# Import and read in the MechaCar_mpg.csv file as a data frame.
mpg <- read.csv(file ="MechaCar_mpg.csv")
#mpg

#first five row 
head(mpg)

#Perform linear regression using the lm() function.
model <- lm (mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance  + AWD  , data=mpg)
model
summary(model)

#Plot a scatter plot
ggplot(mpg, aes(mpg, vehicle_weight)) + 
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

#finding correlation between variables 
cor(mpg$mpg,mpg$vehicle_length)
cor(mpg$mpg,mpg$vehicle_weight)
cor(mpg$mpg,mpg$spoiler_angle)
cor(mpg$mpg,mpg$ground_clearance)
cor( mpg$AWD ,mpg$mpg)

# read and import suspension coil data onto data frame

suspension_coil <- read.csv(file = "Suspension_Coil.csv")

# check the summary of the PSI 
total_summary <- summarize(suspension_coil , Mean=mean(PSI) , Median =median(PSI) , Variance = var(PSI) , SD = sd(PSI))

# Lot summary using group by function in R.
lot_grouping <- group_by(suspension_coil,Manufacturing_Lot)
Lot_summary <- summarize(lot_grouping , Mean=mean(PSI) , Median =median(PSI) , Variance = var(PSI) , SD = sd(PSI))

# t test for all the lots
t.test(suspension_coil$PSI,mu=1500)

#for condition of manufacturing lot 1 in data frame
suspension_coil_lot1 <- subset(suspension_coil , Manufacturing_Lot == 'Lot1')
t.test(suspension_coil_lot1$PSI , mu=1500)


#for condition of manufacturing lot 2 in data frame
suspension_coil_lot2 <- subset(suspension_coil , Manufacturing_Lot == 'Lot2')
t.test(suspension_coil_lot2$PSI , mu=1500)


#for condition of manufacturing lot 3 in data frame
suspension_coil_lot3 <- subset(suspension_coil , Manufacturing_Lot == 'Lot3')
t.test(suspension_coil_lot3$PSI , mu=1500)