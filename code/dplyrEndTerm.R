library(dplyr)
install.packages("dplyr")
library(magrittr)

mtcars <- mtcars %>%
  rownames_to_column(var = "car_name")
mtcars

pvars <- mtcars %>%
  select(ends_with("p"))

carsSub = select(cars, wt, qsec, hp)
dim(carsSub)


