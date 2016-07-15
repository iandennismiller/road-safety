# road-safety
# Copyright (c) 2016 Ian Dennis Miller

# per_capita_metro_plot

per_capita_metro_plot = ggplot(data=d, aes(x=year, y=fatalities_per_capita, group=city)) +
  ylim(0, 0.8) +
  geom_line(aes(color=city), size=0.25, show.legend = FALSE) +
  geom_smooth(
    method = "lm",
    se = FALSE,
    aes(linetype=city, group=city, color=city)
  ) +
  scale_x_continuous(breaks = years)

# trends_plot

trends_plot = ggplot(data=merged) +
  geom_line(aes(color=city, x=year_offset, y=fatalities_per_capita, group=city)) +
  geom_abline(aes(linetype=city,color=city, slope=slope, intercept=intercept)) +
  ylim(0, 0.8) +
  scale_x_continuous(
    breaks=c(0:15),
    labels=as.character(predicted_years),
    limits=c(0, 15)
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# nyc_toronto_plot

d2 = d[ which(d$city %in% c("Toronto", "New York City")), ]
nyc_toronto_plot = ggplot(data=d2, aes(x=year, y=fatalities_per_capita, group=city)) +
  geom_line(aes(color=city), show.legend = FALSE) +
  geom_smooth(method = "lm", aes(linetype=city, group=city, color=city)) +
  scale_x_continuous(breaks = years)

# amsterdam_toronto_plot

d2 = d[ which(d$city %in% c("Amsterdam", "Toronto")), ]
amsterdam_toronto_plot = ggplot(data=d2, aes(x=year, y=fatalities_per_capita, group=city)) +
  geom_line(aes(color=city), show.legend = FALSE) +
  geom_smooth(method = "lm", aes(linetype=city, group=city, color=city)) +
  scale_x_continuous(breaks = years)

# trend_table

trend_table = slopes
trend_table$city = NULL
trend_kable = kable(trend_table)
