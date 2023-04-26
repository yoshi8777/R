library(MASS)
head(hills)
class(hills)
is(hills,'data.frame')
hills[1]
hills[hills$dist >= 12,]