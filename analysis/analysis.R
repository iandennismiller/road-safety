# road-safety
# Copyright (c) 2016 Ian Dennis Miller

library(ggplot2)
library(nlme)
library(knitr)

# load data from CSV
d = read.csv("../data/city-safety-comparison.csv")

# these are the years we have data for
years = c(2009, 2010, 2011, 2012, 2013, 2014, 2015)
predicted_years = c(2009:2024)

# d$year_offset = d$year - mean(years)
d$year_offset = d$year - 2009

# calculate per-capita fatality rate based on collected metro populations
d$fatalities_per_capita = d$fatal_total / d$metro_population * 100000

# extract trend lines for each city using multilevel modelling

lmeControl(maxIter = 10000)

# growth curve
# a random intercept and random slope for each city

city_difference_fit = lme(
  fixed = fatalities_per_capita ~ 1 + year_offset,
  random = ~ 1 + year_offset | city,
  data = d
)

# city_difference_fit
# summary(city_difference_fit)

slopes = data.frame(ranef(city_difference_fit))
names(slopes) = c("intercept", "slope")
slopes$city = row.names(slopes)

fixed = data.frame(fixef(city_difference_fit))
slopes$intercept = slopes$intercept + fixed[1,1]
slopes$slope = slopes$slope + fixed[2,1]

# kable(slopes)

merged = merge(d, slopes, by="city", all.x=TRUE)
