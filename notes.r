# install packages
install.packages("coefplot") # install a package from CRAN
install_github(repo = "coefplot", username = "jaredlander") # install a package from github
install.packages("coefplot_1.1.7.zip") # install a package from zip

# uninstall a package
remove.packages("coefplot") # uninstall a package

# loading a package
require(devtools, quietly = TRUE) # quaetly is an optional argument, if passed doesnot print console log about loading required packages

# unloading packages
detach("packaage:coefplot")

# If a function with the same name exists in two different packages
arm::coefplot(object)
coefplot::coefplot(object)

# variable assignment
x <- 2 # standard way
y = 2 # This syntax is also allowed but not widely used
assign("j", 4) # assigning 4 to j using assign function

# unassign variables
rm(j)

# Data types
#	numeric
#	character
#	logical
#	Date/POSIXct
i <- 5L
class(i) # gives you "integer" as i is assigned as 5L
is.integer(i) # returns TRUE

date1 <- as.Date("2012-06-28", format="%Y-%m-%d")
class(date1) # gives you Date

date2 <- as.POSIXct("2012-06-28 17:42") # representation with time


# Vectors
x <- c(1,2,3,4,5,6,7,8,9,10) # declared this way
y <- 10:1

# element wise operations
x + y
x - y
x * y
x / y

length(x) # gives you size of vector
length(x + y) # calculates (x + y) then finds the length of the result vector

x + c(1,2) # adds 1 to first elem, 2 to second and repeats the cycle for all elements of x

