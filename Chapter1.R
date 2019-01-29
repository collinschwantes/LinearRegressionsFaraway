## Chapter 1 exercises 

library(faraway)
library(ggplot2)
library(dplyr)
library(GGally)
 
# Notes 
# 
# Linear regression first described in 1805 to help with navigation. y ~ Bx + e

#Exercise 

#1 make graphical and numerical descriptions of the teengamb data set RE teen gambling
# in great britain

data("teengamb")

str(teengamb)
summary(teengamb)

# sex is coded as numeric
# unclear what the status variable means - score of parents income
# income values appear to be transformed pounds per week
# verbal is maybe a test score? - number of words correctly defint out of 12
# gamble has a very high max, maybe data entry error - expenditure in pounds per year

teengamb$sex <- as.factor(teengamb$sex)

ggplot(teengamb, aes(x = income, y = gamble)) +
  geom_point()

ggpairs(teengamb)

head(teengamb)

#2 Summarize US Wages data as in question 1 

data("uswages") #f1 for help, provides description of data product

## many categorical variables coded as numerical

head(uswages)
str(uswages)

uswages[,c(4:10)] <- lapply(uswages[,c(4:10)], as.factor) #sapply converts 
                                                    #to chr so use lapply

summary(uswages)

# Experience has a negative value
# sample consists largely of white rural males 

ggpairs(uswages[c(1:5,10)])
ggpairs(uswages[c(1:5,8)])

ggplot(uswages, aes(x = exper, y = educ, size = wage) )+
  geom_point() +
  facet_wrap(~race)

