library(dplyr)
mechacar <- read.csv(file='MechaCar_mpg.csv')
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar))
suspension <- read.csv("Suspension_Coil.csv")
total_summary <- suspension %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),sd=sd(PSI))
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
t.test(suspension$PSI, mu=1500)

