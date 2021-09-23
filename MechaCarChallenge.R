library(dplyr)
#mechacar
mechacar <- read.csv(file='csv/MechaCar_mpg.csv')
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar))
#suspension_coil
suspension <- read.csv("csv/Suspension_Coil.csv")
total_summary <- suspension %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),sd=sd(PSI))
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
t.test(suspension$PSI, mu=1500)
#lot1
lot_1 = subset(suspension, Manufacturing_Lot == 'Lot1')
t.test(lot_1$PSI, mu=1500)
#lot2
lot_2 = subset(suspension, Manufacturing_Lot == 'Lot2')
t.test(lot_2$PSI, mu=1500)
#lot3 
lot_3 = subset(suspension, Manufacturing_Lot == 'Lot3')
t.test(lot_3$PSI, mu=1500)

