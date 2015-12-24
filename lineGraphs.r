# loading ggplot2
require(ggplot2)
require(lubridate)

# loading data
data(economics, package = "ggplot2")

head(economics)

# creating new elements on economics dataset
  # extracting the month from date and storing them as date variable,
  # label = TRUE is to get the month as name field instead of number
economics$month <- month(economics$date, label = TRUE)
  # extracting year from date and storing it as year in economics
economics$year <- year(economics$date)

head(economics)

# which is like where clause to filter out data and the second argument is for
# the list columns, since we want all of them just placing a comma
econ2000 <- economics[which(economics$year >= 2000),]
head(econ2000)

nrow(econ2000) # Has 87 rows
nrow(economics) # Has 478 rows

# loading sclaes library
require(scales)

# loading data to ggplot
g <- ggplot(econ2000, aes(x = month, y = pop)) 

# drawing lines by grouping year
g <- g + geom_line(aes(color=factor(year), group = year))

# changing the color 
g <- g + scale_color_discrete(name = "Year")

# formatting the labels on y axes
# comma is a values from scales package
g <- g + scale_y_continuous(labels = comma)

# adding labels to the graph
g <- g + labs(title="Population Growth", x = "Month of the Year", y = "Population")

# Changing the text orientation for labels on X and Y axis
# angle adjusts their alignment and hjust moves them to the right
g <- g + theme(axis.text.x = element_text(angle = 90, hjust = 1))
g
