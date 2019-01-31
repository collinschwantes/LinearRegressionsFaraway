## Chapter 2
# 
# Estimation
# 
# y = BX + e


library(faraway)
library(ggplot2)
library(dplyr)
library(GGally)
library(lubridate)


gala
ggpairs(gala)

lmod <- lm(Species ~ Area + Elevation + Nearest + 
             Scruz + Adjacent, data = gala) 
#what about the interactions between these variables?

summary(lmod)

plot(lmod)

x <- model.matrix(~ Area + Elevation + Nearest + 
               Scruz + Adjacent, data = gala)

y <- gala$Species

# t() is transpose
xtxi <- solve(t(x) %*% x)

#get coefficients directly 

xtxi %*% t(x) %*% y
