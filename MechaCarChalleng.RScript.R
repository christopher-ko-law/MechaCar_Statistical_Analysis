# Deliverable 1
library(dplyr)

mecha_mpg_data <- read.csv('MechaCar_mpg.csv') 

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg_data) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_mpg_data))

# Deliverable 2
suspension_coil_data <- read.csv('Suspension_Coil.csv')

total_summary <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Deliverable 3

t.test(suspension_coil_data$PSI,mu=1500)

t.test(subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot=='Lot1'),mu=1500)
t.test(subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(suspension_coil_data$PSI, suspension_coil_data$Manufacturing_Lot=='Lot3'),mu=1500)
