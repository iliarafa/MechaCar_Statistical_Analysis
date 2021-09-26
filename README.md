# MechaCar_Statistical_Analysis
## Overview

AutosRUs’ newest prototype, the **MechaCar**, is suffering from production troubles that are blocking the manufacturing progress. We are called to review the production data for insights that may help the manufacturing team.

To complete this we will :<br>
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes<br>
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots<br>
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population



## Linear Regression to Predict MPG 


![](images/linear_regression.png)
<br><br>
In this multi-linear regression model the most significant variables showing a non-random effect on the MPG are: <br>
<br>
**vehicle length /**  Pr(>|t| = 2.6x10<sup>-12</sup>)<br>
**ground clearance /**  Pr(>|t| = 5.21x10<sup>-8</sup>)<br>
<br>
Linear model slope is not zero as p-value is below all significance levels and therefore the null hypothesis is rejected. 
<br><br>
The model will predict MechaCar prototypes with relative effectiveness, but there is room for improvement. Although the R-squared value of 0.71 shows the model approximates real-world data points well, the intercept coefficient Pr(>|t|) of 5.08x10<sup>-8</sup> indicates there are other variables that can help explain the variability of our dependent variable that have not been included in our model. These variables could be engine specifications like size, horse power and torque. 



## Summary Statistics on Suspension Coils 
![](images/total_summary.png)
<br><br>
![](images/lot_summary.png)
<br><br>
Looking at the manufacturing data from all lots we notice a cumulative variance of 62, a very high number. To better understand this we look at the lots separately.  Variance of suspension coils in Lot 3 far exceeds the design specifications limit of 100psi by 70.29psi ; Lot 1 and Lot 2 on the other hand meet the criteria with variances of 0.99 and 7.47 respectively. That means current manufacturing data **does not meet design specifications**.

## T-Tests on Suspension Coils

![](images/coilsall_3.png)
<br>  
The results of the T-test for the suspension coils across all manufacturing lots show no statistical difference from the population mean, and the p-value (0.0603) does not allow us to reject the null hypothesis. This result is verified when looking deeper, individually at Lot 1 and Lot 2. The results from Lot 3 however tell a different story as they show a p-value = 0.042, one that suggests a  statistical difference to the population mean and that enables us to reject the null hypothesis. 
<br>     
![](images/t-lot_3.png)
<br>
## Study Design: MechaCar vs Competition

There is so much more into what makes a car burn more or less fuel. It might be one of the most interesting research areas in car development regardless of the slow shift to electric cars. The main question to be answered by any manufacturer is did we do the best we could engineering this, or could we have done better. To answer this and understand MPG in a less superficial way we will include two more metrics.  

#### The new metrics
I would compare the Mechacar to the competition by focusing on metrics like horse power and safety rating. These metrics add two essential layers that clarify the quality of the car performance.  I would then use the new results to show how any mileage per gallon above the average is atributted either to higher performance or higher safety rating standards of Mechacar compared to the competition. <br>

#### Null and Alternative Hypothesis
H<sub>0</sub>:Mechacar's mileage per gallon is similar to competitor's vehicles of the same horsepower and safety rating.<br>
H<sub>a</sub>:Mechacar's milage per gallon is statistically above or below competitor's vehicles of the same horsepower and safety rating.

This is a two tailed hypotheses and we will use the **analysis of variance (ANOVA)** test as we are looking to compare the means across various samples. 

To run this test we would need data on the specifications of all our competitor's cars that fall in the same categor as our Mechacar. A more thorough analysis would welcome data on all competitor cars with no exception. Finally, data from the development phases of our competitor's cars would be golden, but it would be really unlikely to acquire. 

