install.packages('dplyr')
library(dplyr)

colnames(mtcars)

boxplot(mtcars$disp ~ factor(mtcars$gear) , xlab = "x-axis",ylab = 'y-axis',main='boxplot')

mtcars_aov=aov(mtcars$disp~factor(mtcars$gear))
summary(mtcars_aov)

mtcars_aov2=aov(mtcars$disp~factor(mtcars$gear)* factor(mtcars$am))
summary(mtcars_aov2)
