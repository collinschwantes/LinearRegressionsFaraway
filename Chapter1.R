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
# unclear what the status variable means
# income values appear to be transformed
# verbal is maybe a test score?
# gamble has a very high max, maybe data entry error

teengamb$sex <- as.factor(teengamb$sex)

ggplot(teengamb, aes(x = income, y = gamble)) +
  geom_point()

ggpairs(teengamb)


#2 Summarize US Wages data as in question 1 

