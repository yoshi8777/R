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


#----------------------------------

install.packages('dplyr')
library(dplyr)

student=data.frame(
  name=c("Alan","Benjin","Cathrin","Dukey"),
  Age=c(20,21,20,21),
  Roll_NO=c(101,105,113,115),
  Marks=c(90,NA,72,85)
)

str(student)

summary(student)

student[,1]

student[1:2,]

#fetcing Spectific Attri and Row
student[c(3,5),c(1,5)]

#Adding the Column
student $Address = c('Bangalore','Mumbai','Pune','Delhi')
print(student)

#Drop the Column
select(student,-Address)
print(student)

#Sorting
arrange(student,desc(name))

#replacing null vale with 15
student[is.na(student)]=15
print(student)

student[sum(is.na(student))]


#count number of NA
sum(is.na(student))
colSums(is.na(student))


#Change column name of marks to New marks
rename(student,New_Marks=Marks)

#Add  new variable marks 1  and find Total Marks
student $Marks1 = c(75,65,85,92)
print(student)
sum(student$Marks1)

#select the variable containg "N"
max(student$Marks)

#18
subset(student,Age>=22 & Age<=25, select =c(name,Age))

#16
subset(student,Marks>60,select = c(name,Roll_NO))

#19
summary(student$Marks)

#20
summarise(student,mean(marks),median(marks),min(marks),max(marks))
summarise_at(student,vars=(marks),funs(mean,median,max,min))

#-------------------------------------------
summarise_at(mydata,vars(Y2005,Y2006),funs(n(),missing=sum(is.na(.)),mean(.,na.rm=TRUE),median(.,na.rm = TRUE)))

summarise_at(mydata,vars(Y2005,Y2006),list(~n(),missing=~sum(is.na(.)),~mean(.,na.rm=TRUE),~median(.,na.rm = TRUE)))

arrange(mydata,Index,Y2011)

arrange(mydata,desc(Index),Y2011)

mydata %>% filter(Index=="A")

dt=mydata %>% select(Index,State) %>% sample_n(10)
print(dt)

group_by(mydata,Index)

t=summarise_at(group_by(mydata,Index),vars(Y2011,Y2012),funs(n(),mean(.,na.rm=TRUE)))

mydata11=mutate_all(mydata,funs("new"=.*1000))

mutate_at(mydata,vars(Y2008,Y2010),funs(Rank=min_rank()))
