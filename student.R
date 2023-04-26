install.packages('dplyr')
library(dplyr)

student=data.frame(
  name=c("A","B","C","D"),
  Age=c(18,20,19,21),
  Roll_NO=c(100,105,110,115),
  Marks=c(90,NA,72,85)
)

str(student)

summary(student)

student[,1]

student[1:2,]

student[c(3,5),c(1,5)]

student $Address = c('Bangalore','Mumbai','Pune','Delhi')
print(student)

select(student,-Address)
print(student)

arrange(student,desc(name))

student[is.na(student)]=15
print(student)

student[sum(is.na(student))]