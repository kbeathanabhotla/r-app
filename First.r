# loading ggplot2
require(ggplot2)

# loading diamonds dataset
data("diamonds")

# A dataframe to show the sample of data
head(diamonds)

# histogram
hist(diamonds$carat)

# scatter plot
plot(diamonds$carat, diamonds$price)

#Histrogram using ggplot
ggplot(data = diamonds) + geom_histogram(aes(x = carat))

#Density chart using ggplot
ggplot(data = diamonds) + geom_density(aes(x = carat), fill="gray50")

# scatter plot using ggplot2
ggplot(data = diamonds, mapping = aes(x = carat, y = price)) + geom_point(aes(color = color)) + facet_wrap(~color)

# faceted scatter plot using ggplot2
g <- ggplot(diamonds, aes(x = carat, y = price))
g + geom_point(aes(color = color)) + facet_wrap(cut ~ color)
g + geom_point(aes(color = color)) + facet_grid(cut~carat)
g + geom_point(aes(color = color)) + facet_grid(~carat)
g + geom_path()


