mtcars
install.packages('tidyverse')
library(tidyverse)
library(magrittr)
library(ggplot2)
library(dplyr)
library(MASS)

colnames(mtcars)

ggplot(data = mpg) +geom_point(mapping = aes(x = displ, y = hwy))

g=mpg%>%ggplot(aes(x = displ, y = hwy))
g+geom_point()

gg=g+geom_line()+labs(x="displacement",y="highway",title='grpah')
gg

s1=mpg %>% filter(year %in% 1999)
s1
g = s1 %>% ggplot(aes(x = displ, y = cyl, group = year))
g + geom_line()

s1=mpg %>% filter(year %in% 1999)
g=s1 %>% ggplot(aes(x = disp, y = hwy, group = year))
g+geom_line()


qplot(x = displ, y = hwy, data = mpg, geom = "point")


qplot(mpg,wt,data=mtcars, color = factor(cyl),geom=c("point","smooth"))

qplot(mpg, wt, data = mtcars, size = mpg)

qplot(mpg, wt, data = mtcars, shape = factor(cyl))
