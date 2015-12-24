########################################
#######Solution for Problem 1###########
########################################
sumOfMultiples <- function(n) {
  numbers <- 1:n-1
  sum(numbers[mapply(numbers, FUN = function(x){ (x%%3 == 0 | x%%5 ==0)})])
}

sumOfMultiples(1000)


########################################
#######Solution for Problem 2###########
########################################

sumOfEvenFibonacci <- function(max) {
  total <- 0
  first <- 1
  second <- 2
  
  total
}

sumOfEvenFibonacci(4000000)