# road-safety

Ian Dennis Miller

About the author: As a [Graduate Student](http://imiller.utsc.utoronto.ca) at the University of Toronto, Ian studies complex social phenomena - both online (memes, citations) and offline (politics, urban legends, traffic).

## Summary

Toronto pedestrian and cyclist fatality data were collected for the 7-year period of 2009-2015. Similar data were collected for comparable cities: New York City, Chicago, Los Angeles, London, Amsterdam, and Copenhagen. Yearly *per capita* fatality rates were calculated based on Metro Area populations.

This analysis suggests that in 2009 Toronto was one of the safer cities in the study.  However, by 2015 Toronto had risen to the highest number of pedestrian and cyclist fatalities per capita among the 7 cities studied, and is trending to become significantly more dangerous than all other cities studied.

[Read the full report here.](https://github.com/iandennismiller/road-safety/blob/master/releases/toronto-road-safety.md)

## Featured Comparison: New York City and Toronto

In comparison to New York City, which in 2009 has the highest fatality rate in the study, Toronto has caught up by 2013, and by 2015 actually surpasses New York City in absolute terms - although this difference is not statistically significant.

If the trend lines are extended into the near future, we would expect to find that Toronto will become significantly more dangerous than New York City for pedestrians and cyclists.  As New York City was previously the most dangerous, Toronto is therefore trending to become most dangerous among the 7 cities studied.

![Featured Comparison: NYC and Toronto](https://github.com/iandennismiller/road-safety/raw/master/releases/toronto-road-safety_files/figure-markdown_github/nyc_toronto-1.png)

## How to reproduce this report

1. All materials, including data, scripts, and manuscripts, are included within this git repository.
2. Analysis and reporting were accomplished with R 3.2.3 on macOS 10.11.
3. Install required R libraries: knitr, rmarkdown, and ggplot2.
4. An RStudio project is available in the `/analysis` folder.

The report can be built from the command line by issuing the following command:

    make analysis open

## License

See [LICENSE.md](LICENSE.md) for details.  This project contains two licensable components:

- Software, which is distributed with the MIT License
- Reports in the `/releases` folder, which are distributed with a Creative Commons License.
