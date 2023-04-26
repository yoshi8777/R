# Create a 3x2 matrix
my_matrix <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 3, ncol = 2)
# Find the transpose of the matrix
my_transpose <- t(my_matrix)

#---------------------------------

# Prompt user to enter number of terms to print
n_terms <- as.integer(readline(prompt = "Enter the number of terms to print in Fibonacci sequence: "))

# Initialize first two terms of sequence
fibonacci <- c(0, 1)

# Calculate and print subsequent terms of sequence
for (i in 3:n_terms) {
  fibonacci[i] <- fibonacci[i - 1] + fibonacci[i - 2]
}

cat(paste("The first", n_terms, "terms of the Fibonacci sequence are:\n"))
cat(fibonacci, sep = ", ")

#------------------------------------
for (i in 1:100) {
  if (i %% 3 == 0 & i %% 5 == 0) {
    cat("FizzBuzz\n")
  } else if (i %% 3 == 0) {
    cat("Fizz\n")
  } else if (i %% 5 == 0) {
    cat("Buzz\n")
  } else {
    cat(i, "\n")
  }
}
#-------------------------------
for (i in 1:5) {
  for (j in 1:i) {
    cat("*")
  }
  cat("\n")
}

#----------------------------------

gcd <- function(a, b) {
  if (b == 0) {
    return(a)
  } else {
    return(gcd(b, a %% b))
  }
}

