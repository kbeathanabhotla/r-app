require(ggplot2)

data("diamonds", package = "ggplot2")

head(diamonds)

g <- ggplot(data = diamonds, aes(x = carat, y = price))
g <- g + geom_point(aes(color = color))
g + facet_grid(cut~price)

 