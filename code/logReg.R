library(dplyr)
input <- mtcars[,c("am","cyl","hp","wt")]
print(input)


regModel=glm(am~cyl+hp+wt,data = input,family=binomial)
print(summary(regModel))

rnorm(5)
