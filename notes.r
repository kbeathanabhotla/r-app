######################################
#############Basics###############
######################################
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

######################################
#############Data Types###############
######################################
#	numeric
#	character
#	logical
#	Date/POSIXct
i <- 5L
class(i) # gives you "integer" as i is assigned as 5L
is.integer(i) # returns TRUE
is.numeric(x) # retunrs if x is numeric or non numeric

date1 <- as.Date("2012-06-28", format="%Y-%m-%d")
class(date1) # gives you Date

date2 <- as.POSIXct("2012-06-28 17:42") # representation with time

nchar("data") # returns 4, gets number of characters of "data"
nchar(452) # returns 3 as 452 is a 3 digit number
# nchar doesn't work on factor


######################################
############# Vectors#################
######################################
x <- c(1,2,3,4,5,6,7,8,9,10) # declared this way
y <- 10:1 # can also be declared this way

# element wise operations
x + y
x - y
x * y
x / y

length(x) # gives you size of vector
length(x + y) # calculates (x + y) then finds the length of the result vector

x + c(1,2) # adds 1 to first elem, 2 to second and repeats the cycle for all elements of x
# if the number of elements in x is not a multiple of the number of elements in the new vector it just logs a message but does not fail


x < y # compares each element of x with corresponding element of y and gets a vector of true/false
any(x < y) # returns TRUE if any of the elements of x is less than the corresponding element of y
all(x < y) # returns TRUE if all the elements of x are lesser than the corresponding elements of y

nchar(x) # returns element wise nchar vector

x[1] # individual elemts are accessed this way
x[1:2] # gets first two elements
x[c(1,4)] # gets 1st and 4th element

# Named vectors : We can assign names to elements of a vector
namedVector <- c(One="a", Two="b", Three="c")
names(namedVector) # returns all the names elements as a vector, if names are not assigned returns NULL

#names for an existing vector should be assigned this way
names(x) <- c("One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten")

# Factors are variables in R which take on a limited number of different values.
# Categorical variables enter into statistical models differently than continuous variables, storing data as factors insures that the modeling functions will treat such data correctly.
q <- c("Hockey", "Lacrosse", "Hockey", "Water Polo", "Hockey", "Lacrosse")
qFactor <- as.factor(q) # This is the way to convert it to a factor
# factors can drastically reduce the size of the variable because they are storing only the unique values
























