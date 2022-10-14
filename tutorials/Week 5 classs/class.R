

pearson <- function(vec_x, vec_y) {
  if (!(is.numeric(vec_x) && is.numeric(vec_y))) {
    stop("Both arguments must be numeric")
  }
  mean_x <- sum(vec_x)/length(vec_x) 
  mean_y <- sum(vec_y)/length(vec_y)
  
  numerator <- sum((vec_x - mean_x) * (vec_y - mean_y)) 
  denominator <- (
    sum((vec_x - mean_x)^2)^1/2 * 
      sum((vec_y - mean_y)^2)^1/2)
  r <- numerator/denominator
  # Make sure that floating point arithmetic does not # produce absolute values larger than 1
  r <- max(min(r, 1.0), -1.0)
  return(r) }

v1 <- c(1, 2, 3, 4, 5)
v2 <- c(-3, -5, -7, -9, -11)
pearson
cor(v1,v2)

pearson <- function(vec_x, vec_y) {
  if (!(is.numeric(vec_x) && is.numeric(vec_y))) {
    stop("Both arguments must be numeric")
  }
  mean_x <- sum(vec_x)/length(vec_x) mean_y <- sum(vec_y)/length(vec_y)
  numerator <- sum((vec_x - mean_x) * (vec_y - mean_y)) denominator <- (
    sum((vec_x - mean_x)^2)^1/2 * 
      sum((vec_y - mean_y)^2)^1/ <2/1
  )
  r <- numerator/denominator
  # Make sure that floating point arithmetic does not # produce absolute values larger than 1
  #bimsas
  r <- max(min(r, 1.0), -1.0)
  return(r) }



calculate_median <- function(a) { 
  a <- sort(a)
  n <- length(a)
  m <- (n + 1) %/% 2
  if (n %% 2 == 1) { med <- a[m]
  } else {
  browser()
  med <- mean(a[m:m+1]) }
  return(med)
}
library(testthat)
