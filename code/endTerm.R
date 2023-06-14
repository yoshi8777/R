library(dplyr)
library(MASS)
install.packages('dplyr')

# Example data
x <- c(2, 4, 6, 8, 10)  # Variable 1
y <- c(5, 7, 8, 11, 13)  # Variable 2

# Calculate the correlation coefficient
correlation <- cor(x, y)
# Print the correlation coefficient
print(correlation)

chisq.test(dat)
fisher.test(dat)
# Perform ANOVA
result <- aov(WeightLoss ~ Diet, data = data)

# Create a data frame from the main data set.
car.data <- data.frame(Cars93$AirBags, Cars93$Type)
# Create a table with the needed variables.
cardata = table(Cars93$AirBags, Cars93$Type)
print(cardata)
# Perform the Chi-Square test.
print(chisq.test(cardata))
print(fisher.test(cardata))




dat <- data.frame(
  "smoke_no" = c(7, 0),
  "smoke_yes" = c(2, 5),
  row.names = c("Athlete", "Non-athlete"),
  stringsAsFactors = FALSE
)
colnames(dat) <- c("Non-smoker", "Smoker")

mosaicplot(dat,
           main = "Mosaic plot",
           color = TRUE
)
chisq.test(dat)$expected
test <- fisher.test(dat)
test
test$p.value
#test$p.value


