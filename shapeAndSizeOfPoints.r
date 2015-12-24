require(ggplot2)

data("diamonds")

# A plot showing different shapes for each cut and size for depth
ggplot(diamonds, aes(x = carat, y = price, color = color, shape=cut, size = depth)) + geom_point()
