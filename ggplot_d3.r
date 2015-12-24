# Library dealing with ggplot d3 graphs
require(ggvis)

# Loading cocane dataset(comes built-in with ggvis)
data(cocaine)

head(cocaine)

require(ggplot2)
ggplot(cocaine, aes(x = weight, y = price)) + geom_point()

# ggvis uses pipe symbol (%>%) instead of + in ggplot2
# fill is like color in ggplot
# stroke attribute for the outer cover
cocaine %>% ggvis(x=~weight, y= ~price, fill= ~potency) %>% layer_points()

# Whem taking a value from dataset we use ~, if we are taking a constant value we we :
cocaine %>% ggvis(x= ~weight, y= ~price, fill:="green") %>% layer_points()

cocaine %>% ggvis(x= ~weight, y= ~price, fill:="green") %>% layer_points() %>% layer_smooths()

# Taking input from a slider
cocaine %>% ggvis(x= ~weight, y= ~price, size := input_slider(10,100), opacity := input_slider(0,1)) %>% layer_points()

# sensex like graph on unemployement
require(ggvis)
data(economics, package = "ggplot2")
head(economics)

economics$date <- as.character(economics$date)
class(economics$date)
economics %>% ggvis(x= ~date) %>% layer_lines(y= ~uempmed, stroke= ~uempmed) %>% layer_lines(y= ~psavert, stroke= ~psavert)
