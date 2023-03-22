library(dplyr)
library(tidyverse)
# Get user's age

# Takes user's year of birth as an input
# Returns age in years as an integer
get_age <- function() {
  yob <- readline("Please enter your year of birth: ")
  if(yob > 2022){print("incorrect user value")}
  age <- 2022 - as.numeric(yob)
  return(age)
}

###2

Fibonacci <- function(n) {
  if (n==1) {
    x <- 0
  } else {
    x <- c(0,1)
    while (length(x) < n) {
      position <- length(x)
      new <- x[position] + x[position-1]
      x <- c(x,new)
    }
  }
  return(x)
}
##
dplyr::last(Fibonacci(5))
#
fibtail <- function(n) {
  dplyr::last(Fibonacci(n))
}


fibtail(10)
a <- c(1, 2, 3, 4, 5)
c(3, 9, 12)

####3
set.seed(2021)
n <- 200
m <- 1000
mat <- matrix(rnorm(m * n, mean = 20, sd = 3), nrow = 200)
# For simplicity, let's assume that assignment to control and experimental groups
#is always the same
grp <- rep(0:1, times = 100)

matd <- as.data.frame(mat)

col1 <- matd$V1
col2 <- matd$V2
t.test(grp,matd$V1)
t.test(grp,matd[,1])
t.test(grp,matd[,1:1000])





##4
set.seed(2022)
dfs <- lapply(1:10, function(n) data.frame(x = letters[sample(1:26,20,TRUE)], y = sample(1:26,20,TRUE)))

a <- rbind.data.frame(dfs)
unique(a)

####q5
library("readr")
library("dplyr")

PATH <- "kaggle_survey_2021_responses.csv"
getwd()
questions <- readr::read_csv(PATH, n_max = 2)
spec()
show_col_types= FALSE

kaggle2021 <- readr::read_csv(PATH, col_names = names(questions), skip = 2)

Q7p <- sort(c(100-(colMeans(is.na(A7)))*100),decreasing = TRUE)
Q7df <- as.data.frame(Q7p)

Piv_Q7df <- tidyr::pivot_wider(Q7df)
                 