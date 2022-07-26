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


## Deliverable 3
### Simple t-test

# Suspension Population <- Suspension_Coil

susp_sample <- Suspension_Coil %>% sample_n(50) #randomly sample 50 data points

t.test(log10(susp_sample$PSI), mu=mean(log10(Suspension_Coil$PSI))) # compare sample PSI to population PSI

# t-test for each Lot
## find a sample for each of the 3 lots
susp_lot1 <- Suspension_Coil %>% filter(Manufacturing_Lot=="Lot1") %>% sample_n(15)
susp_lot2 <- Suspension_Coil %>% filter(Manufacturing_Lot=="Lot2") %>% sample_n(15)
susp_lot3 <- Suspension_Coil %>% filter(Manufacturing_Lot=="Lot3") %>% sample_n(15)

t.test(log10(susp_lot1$PSI), mu=mean(log10(Suspension_Coil$PSI))) # compare Lot1 sample PSI to population PSI
t.test(log10(susp_lot2$PSI), mu=mean(log10(Suspension_Coil$PSI))) # compare Lot2 sample PSI to population PSI
t.test(log10(susp_lot3$PSI), mu=mean(log10(Suspension_Coil$PSI))) # compare Lot3 sample PSI to population PSI