

# Import the Hotdog contest winners data
life_expectancy<- read.delim(file.choose(), header=T, sep=",")
# Attach the data
attach(life_expectancy)

dim(life_expectancy)

names(life_expectancy)

plot(country, expectancy, xlab='country', ylab='Expectancy Rate', main='Expectancy Rate by County')

library(plotly)

plot_ly(life_expectancy, x = country, y = expectancy, type = 'scatter', mode = "markers")

library(ggplot2)

density(life_expectancy$expectancy)
plot(density(life_expectancy$expectancy))
