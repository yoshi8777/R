films_data <- data.frame(
  title=c("Dark Knight","Creed","Dune"),
  director=c("Christopher Nolan","Micheal B Jordan","Denis V"),
  year=c(2008,2023,2022),
  country=c("America","America","Canada")
)

films_data

films_data2 <- data.frame(
  title=c("Batman"),
  director=c("Matt Reeves"),
  year=c(2022),
  country=c("France")
)

films_data2

films_combined <- rbind(films_data,films_data2)
films_combined

films_row <- rbind(films_data,c("Black Panther","Ryan Coogler",2018,"America"))
films_row <- rbind(films_data,c("Vikram","Lokesh K",2021,"India"))

films_row

films_col <- cbind(films_row,Genre = c("Thriller","Action","Sci-Fi","Action"))
films_col

#order(films_col,decreasing = TRUE)
#film1=films_col(order(films_col$title),)
film1=films_col[order(films_col$title,decreasing = TRUE),]
film1



