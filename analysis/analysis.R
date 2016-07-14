# road-safety
# Copyright (c) 2016 Ian Dennis Miller

library(ggplot2)
d = read.csv("../data/city-safety-comparison.csv")
years = c(2009, 2010, 2011, 2012, 2013, 2014, 2015)

d$fatalities_per_capita = d$fatal_total / d$metro_population * 100000
