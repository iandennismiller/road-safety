# road-safety

## Summary

Toronto pedestrian and cyclist fatality data were collected for the 7-year period of 2009-2015. Yearly *per capita* fatality rates were calculated based on Metro Area populations. Similar data were collected for comparable cities: New York City, Chicago, Los Angeles, London, Amsterdam, and Copenhagen.

This analysis suggests that in 2009 Toronto was one of the safer cities in the study.  However, by 2015 Toronto had risen to the highest number of pedestrian and cyclist fatalities per capita among the 7 cities studied.

[Read the report.](https://github.com/iandennismiller/road-safety/blob/master/releases/toronto-road-safety.md)

## Direct Comparison: NYC and Toronto

In comparison to New York City, which in 2009 has the highest fatality rate in the study, Toronto catches up by 2013, and by 2015 actually surpasses New York City in absolute terms - although the difference is not significantly different.  If the trend lines are extended into the near future, we would expect to find that Toronto will become significantly more dangerous than New York City for pedestrians and cyclists.

![Direct Comparison: NYC and Toronto](https://github.com/iandennismiller/road-safety/raw/master/releases/toronto-road-safety_files/figure-markdown_github/nyc_toronto-1.png)

## How to reproduce this report

1. The analysis and reporting was accomplished with R version 3.2.3.
2. An RStudio project is available in the `/analysis` folder.
3. All necessary materials are included within this git repository.

The report can be built from the command line without RStudio by issuing the following command:

    make release

This will render the report and place it into the `/releases` folder.  The report is rendered as a GitHub-flavor markdown file that is suitable for viewing directly on github.com.

## License

See [LICENSE.md](LICENSE.md) for details.  This project contains two licensable components:

- Software, which is distributed with the MIT License
- Reports in the `/releases` folder, which are distributed with a Creative Commons License.
