require(ggthemes)

# Defining scatter plot
date(diamonds, package="ggplot2")
g <- ggplot(diamonds, aes(x = carat, y = price, color = color)) + geom_point()

# adding theme as of WallStreetJournal
g + theme_wsj()

# Adding theme as economis and changing colors as economist
g + theme_economist() + scale_color_economist()

# Adding theme as economis and changing colors as excel
g + theme_excel() + scale_color_excel()

