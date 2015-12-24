require(devtools)

install_github("rCharts", "ramnathv")

head(iris)
nrow(iris)

# loading rCharts
require(rCharts)

# Method to remove . in names
names(iris) <- gsub("\\.", "", names(iris))
head(iris)

# The | symbol acts as a facet, the example below acts as fecet for species
rPlot(data=iris, SepalLength ~ SepalWidth | Species, color="Species", type="point")

data("HairEyeColor")

hairEyeColor <- as.data.frame(HairEyeColor)
head(hairEyeColor)

# A simpel example of histrogram type of char in rCharts
rPlot(data = hairEyeColor, Freq ~ Eye | Eye, type="bar")


data(economics, package = "ggplot2")
head(economics)

# Date fields are not handled by D3 the same way as R, we have to convert it
class(economics$date)
economics$date <- as.character(economics$date)
head(economics)
class(economics$date)

# Morse Plot
require(reshape2)
m1 <- mPlot(x="date", y=c("psavert, uempmed"), type="Line", data=economics)
m1$set(pointSize=0, linewidth=1)
m1
