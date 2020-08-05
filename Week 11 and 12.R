
install.packages("gplots")
install.packages(rgdal)

library(data.table)
library(spatial)
library(gplots)
library(plotly)
library(ggplot2)

# Import data
education<- read.delim(file.choose(), header=T, sep=",")

attach(education)

dim(education)

names(education)

library(plotly)
fig <- plot_ly(x = math, type = "histogram")

fig

# Boxplot 
boxplot(math, reading, writing,data=education, main="Math by state",
        xlab="State", ylab="Math")

bullet_chart(dataframe = education)


