
install.packages("gplots")
install.packages(rgdal)

library(data.table)
library(spatial)
library(gplots)
library(plotly)
library(ggplot2)

# Import data
costcos_geocoded<- read.delim(file.choose(), header=T, sep=",")

attach(costcos_geocoded)

ppg2008<- read.delim(file.choose(), header=T, sep=",")

dim(costcos_geocoded)

names(costcos_geocoded)

data <- data.matrix(costcos_geocoded)

heatmap.2(data, main = "Geocoded", margins = c(10,12), cexRow = 0.2, Rowv = FALSE, Colv = FALSE)

coordinates(costcos_geocoded) = c("Longitude","Latitude")
crs.geo1 = CRS("+proj=longlat")
proj4string(costcos_geocoded) = crs.geo1

plot(costcos_geocoded, pch = 20, col = "blue")

plot_ly(ppg2008, type = "contour", colorscale = 'Jet', autocontour = F, contours=list(start = -2000, end = 2000, size = 100))


fig <- plot_ly(
  x = c(-9, -6, -5, -3, -1), 
  y = c(0, 1, 4, 5, 7), 
  z = matrix(c(10, 10.625, 12.5, 15.625, 20, 5.625, 6.25, 8.125, 11.25, 15.625, 2.5, 3.125, 5, 8.125, 12.5, 0.625, 1.25, 3.125,
               6.25, 10.625, 0, 0.625, 2.5, 5.625, 10), nrow = 5, ncol = 5), 
  type = "contour" 
)

fig
