df=read.csv(file="C:/Users/Admin/Desktop/5/data.csv")
print(df)

new_csv <- subset(df, Temp>65)
print (new_csv)

write.csv(new_csv, "new_sample.csv")
new_data <-read.csv(file ='new_sample.csv')
print(new_data)

barplot(airquality$Ozone, main="Ozone Concentration in Air",xlab="Ozone Levels",horiz=TRUE)

hist(airquality$Temp, main="Le Guardia Airports Max Temperature", xlab="Temperature [Fahrenheit]",xlim=c(50,125),col="yellow",freq=TRUE)

