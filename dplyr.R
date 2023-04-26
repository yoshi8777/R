install.packages('dplyr')
library(dplyr)

mydata=read.csv("https://raw.githubusercontent.com/deepanshu88/data/master/sampledata.csv")
print(mydata)

sample_n(mydata,3)
sample_frac(mydata,0.1)

#Remove all Duplicate Rows Based on a variable:
x2=distinct(mydata,Index,.keep_all=TRUE)
print(x2)

#Remove Duplicate Rows Based on Multiple Variables:
x2=distinct(mydata,Index,Y2010,.keep_all=TRUE)
print(x2)

#select():
mydata2=select(mydata,Index,State:Y2008)

#DRopping Variables:
select(mydata,-Index,-State)

#Selecting or dropping variables starts with Y:
select(mydata,starts_with("Y"))
select(mydata,-starts_with("Y"))
select(mydata,end_with("x"))
select(mydata,-ends_with("e"))

#Selecting elements containing "I" in them:
select(mydata,contains('I'))
select(mydata,matches("Y200"))

#Re-Order Variables:
select(mydata,State,everything())

#Chnage the column name:
rename(mydata,NewIndex=Index)

#Filter rows"
filter(mydata,Index=='A')

#Multiple Selection Criteria:
filter(mydata,Index %in% c("A","C"))

#AND Selection Criterai:
filter(mydata,Index %in% c("A","C") | Y2002>=1300000)

#Grepl function:
filter(mydata,grepl("Ar",State))

#Summarize selected variables:
summarise(mydata,Y2015_mean=mean(Y2015),Y2015_med=median(Y2015))

summarise_at(mydata,vars(Y2005,Y2006),funs(n(),mean,median))

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

t=mydata %>% select(Index,Y2015) %>% filter(Index %in% c('A','C','I')) %>% group_by(Index) %>% do(arrange(.,desc(Y2015))) %>% slice(3)
print(t)

t1=mydata %>% group_by(Index) %>% summarise(Mean_2014=mean(Y2014,na.rm = TRUE), Mean_2015=mean(Y2015,na.rm = TRUE)) %>% arrange(desc(Mean_2015))
print(t1)