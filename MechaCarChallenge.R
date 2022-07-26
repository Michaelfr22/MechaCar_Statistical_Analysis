# MechaCar Statistical Analysis

## Deliverable

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
