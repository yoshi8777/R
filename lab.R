print(BMT)

newbmi1=rbind(BMI,data.frame(gender='M',height=156,weight=67,age=23))
newbmi1=rbind(BMI,c('M',156,67,23),c('F',156,67,23))
print(bmi1)

v=cbind(BMT, place=c("Bangalore",'Mysore','Pune'))