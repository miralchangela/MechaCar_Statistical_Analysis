# MechaCar Statistical Analysis

## Overview of the Project
AutoRU's newest prototype, the MechaCar is suffering from the production trouble that is blocking the manufacturing team's progress. In this project , we do the following criteria.

1) Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

2) Collect summary statistics on the PSI of the suspension coils from the manufacturing lots.

3) Run a t-test to identify if the manufacturing lots are statistically different from the mean population.

## Linear Regression to Predict MPG

- The dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using specifications to identify ideal vehicle performance.

-  The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance.

- Multiple variables, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.

- Using your knowledge of R, design a linear model that predicts the mpg of MechaCar prototypes using several variables from the dataset.

![Linear regression](https://github.com/miralchangela/MechaCar_Statistical_Analysis/blob/main/images/linear%20regeression%20result.png)

1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle length with p-value=2.60e-12 which is « 0.05
ground clearance with p-value=5.21e-08 which is « 0.05

2. Is the slope of the linear model considered to be zero? Why or why not?

No. the slope can't be zero. If slope were zero, then there would be no correlation between mpg and the other independent variables. We are doing multiple linear regression for MacheCars. so, equation for linear regression model is written below:

mpg = -104.0+ 6.267(vehicle length) + 0.001(vehicle weight) + 0.069(spoiler angle) + 3.546(ground clearance)- 3.411(AWD)

In this equation, we can clearly see that slope of the model is couldn't be zero. If we are changing in amount of variables, so might change the value of intercept.

3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    
Somewhat. Here (Intercept) is not equal to 0, it means that the intercept coefficient explains a significant amount of variability in the dependent variable when all independent variables are equal to zero.  Generally, the range of R-squared is in between 0 to 1. However, we have Multiple R-squared = 0.7149(nearer to 1 which is better), which indicates a strong correlation between dependent and independent variable. 

## Create Visualizations for the Trip Analysis

### Manufacturing lot summary

- Below are the summary statistics of all of the manufacturing lots. The sample mean is 1498.78 and the population mean would be 1500.

![manufacturing lot summary](https://github.com/miralchangela/MechaCar_Statistical_Analysis/blob/main/images/manufacturing%20lot%20summary.png)

### Summary by Manufacturing Lot Number
- Preceding image gives the summary statistics using the group of manufacturing lot. Here the sample mean is approximately same as the population mean.

![group of manufacturing lot summary](https://github.com/miralchangela/MechaCar_Statistical_Analysis/blob/main/images/number%20lot%20summary.png)

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch

1.Does the current manufacturing data meet this design specification for al manufacturing lots in total and each lot individually? Why or why not?

The variance for the total manufacturing lot is 62 < 100, which is within the expected design specifications of staying under 100 PSI. 

However, when reviewing the data by Lot number, Lot 3 has large variance. Lot 3 shows a variance of 170 > 100 and does not meet the design specifications Lot 1 and Lot 2 have significantly lower variance 1 and 7.5 respectively.

## T-Tests on Suspension Coils

Using the knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1500 PSI.

The results are shown in Figures below. The only lot with a statistical difference is Lot 3 (probably because of the high variance as shown in Figure).

### T-test for all Lots

- All Manufacturing Lots: p-value = 1 , alpha (significance level) = 0.05
- 1 > 0.05, which means the total manufacturing lot is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![all lots](https://github.com/miralchangela/MechaCar_Statistical_Analysis/blob/main/images/t%20test%20reuslt.png)

### T-test for Lot 1

- Lot 1: p-value = 1.568e-11, alpha = 0.05
- 1.568e-11 < 0.05, which means Lot 1 is statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![Lot1](https://github.com/miralchangela/MechaCar_Statistical_Analysis/blob/main/images/lot1%20summary%20result.png)

### T-test for Lot 2

- Lot 2: p-value = 0.0005911, alpha = 0.05
- 0.0005911 < 0.05, which means Lot 2 is statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![Lot2](https://github.com/miralchangela/MechaCar_Statistical_Analysis/blob/main/images/lot2%20summary%20result.png)

### T-test for Lot 3

- Lot 3: p-value = 0.1589, alpha = 0.05
- 0.1589 > 0.05, which means Lot 3 is not statistically significant from the normal distribution and normality can be assumed. The mean falls within the 95% confidence interval.

![Lot3](https://github.com/miralchangela/MechaCar_Statistical_Analysis/blob/main/images/lot3%20summary%20result.png)

## Study Design: MechaCar vs Competition

When comparing MechaCar to its competitor’s other metrics that could be of interest to a consumer could include cost, car color, city fuel efficiency, highway fuel efficiency, horsepower, maintenance cost, or safety rating.

1. What metric or metrics are you going to test?


2. What is the null hypothesis or alternative hypothesis?


3. What statistical test would you use to test the hypothesis? And why?


4. What data is needed to run the statistical test?


