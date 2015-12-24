# loading ggplot2
require(ggplot2)

# loading data
data(data = "diamonds", package = "ggplot2")

head(diamonds)

# creating ggplot
g <- ggplot(diamonds, aes(x = carat, y = price)) + geom_point(aes(color = color))

# creates a grid one for each color, acts like groupBy cut, color
g + facet_wrap(cut~color)

# creates a grid as cut vs clarity, cut goes to the right and clarity goes on top
g + facet_grid(cut~clarity)


