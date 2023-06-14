# x represents the weight of the people
x <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
#y represents the height of the people
y<-c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)

relation=lm(y~x)
print(relation)
print(summary(relation))

newHeight=data.frame(x=70)
result=predict(relation,newHeight)
print(result)

png(file="linearReg.png")
plot(y,x,col='blue',main='linear Reg')
abline(lm(y ~ x),cex = 1.3, pch = 16, xlab = "Weight in Kg", ylab = "Height in cm")
dev.off()

dataT=data.frame(
  age=c(18,19,20,21,22,23),
  height=c(76.1,77.7,78.1,78.2,78.8,79.7)
)

relation2=lm(age~height,data=dataT)
print(summary(relation2))

newHeight2=data.frame(height=78.5)
result2=predict(relation2,newHeight2)
print(result2)











