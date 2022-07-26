# MechaCar Statistical Analysis

## Deliverable 1

mecha_car <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import used car dataset

### linear regression

lm(mpg ~
     vehicle_length +
     vehicle_weight +
     spoiler_angle +
     ground_clearance +
     AWD,
   data=MechaCar_mpg) #generate multiple linear regression model

summary(lm(mpg ~
     vehicle_length +
     vehicle_weight +
     spoiler_angle +
     ground_clearance +
     AWD,
   data=MechaCar_mpg)) #generate summary

#### Findings
##### 1. R-squared: 0.7149
##### 2. p-value:   5.35 x 10^-11


## Deliverable 2

susp_coil <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import used car dataset

total_summary <- data.frame(Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep'))
total_summary

lot_summary <- data.frame(Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Variance_PSI=var(PSI), SD_PSI=sd(PSI), .groups = 'keep'))
lot_summary
