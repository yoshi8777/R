Bike_Lane dataset
bike = read.csv("http://johnmuschelli.com/intro_to_r/data/Bike_Lanes.csv")
bike
1. How many bike “lanes” are currently in Baltimore? You can assume each observation/row is a different 
bike “lane”
dim(bike)
2. How many (a) feet and (b) miles of bike “lanes” are currently in Baltimore?
(a) sum(bike$length)
sum(bike$length)/5280
3. How many types of bike lanes are there? Which type has (a) the most number of lanes and (b) 
longest average bike lane length?
colnames(bike)
length(unique(bike$type)) # n_distinct(bike$type)
m1=bike %>% group_by(type) %>% summarise(number_of_rows = n(),
 mean_lane = mean(length)) %>% arrange(desc(mean_lane))
m1[1,]
filter(m1,number_of_rows==max(number_of_rows)) %>% select(type, number_of_rows)
filter(m1,mean_lane==max(mean_lane)) %>% select(type, mean_lane)
4. How many different projects (project) do the bike lanes fall into? 
Which project category has the longest average bike lane length?
length(unique(bike$project))
avg = bike %>% group_by(project) %>% summarize(mn = mean(length, 
na.rm = TRUE)) %>% filter(mn == max(mn))
avg
5. What was the average bike lane length per year that they were installed? (Be sure to 
first set dateInstalled to NA if it is equal to zero.)
bike = bike %>% mutate(
 dateInstalled = ifelse( dateInstalled == 0, NA, dateInstalled))
print(mean(bike$length[ !is.na(bike$dateInstalled)]))
6. (a)Numerically and (b) graphically describe the distribution of bike lane lengths 
(length).
# Numeric summary
quantile(bike$length)
hist(bike$length)
boxplot(bike$length~bike$type)
