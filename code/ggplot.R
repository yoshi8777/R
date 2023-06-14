install.packages("tidyverse")
library(tidyverse)
library(dplyr)
mtcars

g=mpg%>%ggplot(aes(x=displ , y=hwy))
g
g+geom_line()

gg=g+geom_line()+labs(x="displacement",y="hwy",title="hwy vs displacement")
gg

s1=mpg%>%filter(year%in%1999)
s1

g=s1%>%ggplot(aes(x=displ,y=cyl,group = year))
g
g+geom_line()

ggplot(data=mpg)+geom_point(mapping = aes(x=displ,y=hwy))
ggplot(data=mpg)+geom_line(mapping = aes(x=displ,y=hwy))
ggplot(data=mpg)+geom_smooth(mapping = aes(x=displ,y=hwy))

install.packages('gplots')
library("gplots")
x=1:10;
y=x*x
qplot(x,y)
qplot(x,y,geom=c("point","line"))
qplot(mpg,wt,data=mtcars,color=factor(cyl),geom=c("point","smooth"))
qplot(mpg,data=mtcars,color=factor(cyl),geom="histogram",xlab="miles per galloon",ylab = "count",main = "histogram")

g+geom_point()
g+geom_smooth()
g+geom_boxplot()
g+geom_bin2d()
g+geom_density_2d_filled()
g+geom_violin()


qplot(x,y=NULL,data,geom="auto",xlim=c(NA,NA),ylim=c(NA,NA))




#Statistical Analysis
s1=select(mtcars,gear,carb)
s1
cor(s1)
cor(s1,use='complete.obs')  

#proportion test
prop.test(c(15,25),c(100,100))
prop.test(c(45,66),c(100,110))

library('MASS')
Cars93
car.data=data.frame(Cars93$AirBags,Cars93$Type)
cardata=table(Cars93$AirBags,Cars93$Type)
print(cardata)
print(chisq.test(cardata))

dat=data.frame(
  "smoke_no"=c(7,0),
  "smoke_yes"=c(2,5),
  row.names=c("Athlete","Non-Athlete"),
  stringAsFactors=FALSE
)
colnames(dat)=c("Non-smoker","Smoker")
dat

mosaicplot(dat,
           main="Mosaic Plot",
           color = TRUE
)

library(dplyr)

boxplot(mtcars$disp-factor(mtcars$gear))

mtcars_aov = aov(mtcars$disp~factor(mtcars$gear))
summary(mtcars_aov)

boxplot(mtcars$disp~mtcars$gear,subset = (mtcars))
