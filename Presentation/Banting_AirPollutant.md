Banting Air Pollutant Index
========================================================
author: Ng Boon Pin
date: 5 Feb 2016

Introduction
========================================================

This slide presentation is produced as part of Coursera course project for Developing Data Products.

### Shiny Application

The shiny apps can be viewed at this page:
https://ngboonpin.shinyapps.io/BantingAirPollutatnt/

### Github Repo

The code for the shiny apps can be downloaded from the github repo at: https://github.com/ngboonpin/Developing_Data_Product/

Shiny Application - Banting Air Pollutant Index
========================================================

The Air Pollution Index (API) is a simple and generalized way to describe the air quality, which is used in Malaysia. It is calculated from several sets of air pollution data.

This application allows viewer to observe the hourly changes of the API reading in Banting, based on the selected Month and Year.

Source of the data is obtained from http://data.gov.my/view.php?view=280

However, the measured API is only available from August 2013 and February 2015.

Sample of Data
========================================================


```r
banting<-read.csv("API_Banting.csv")
head(banting)
```

```
  Station.No Location       Date Hour API Pollutant
1         41  Banting 2013-08-01    1  66         *
2         41  Banting 2013-08-01    2  67         *
3         41  Banting 2013-08-01    3  67         *
4         41  Banting 2013-08-01    4  67         *
5         41  Banting 2013-08-01    5  67         *
6         41  Banting 2013-08-01    6  67         *
```



Summary
========================================================

This application demonstrated the features in Shiny application that allows creation of interactive R programs embedded into web page.

The Select Box input is used to receive user action and Plot Output/Data Table Output is used to display the outcome of user selection.

The reactive output is displayed in the graph/data table as a result of server processes.

Based on the outcome of the graph, we can observe that API readings usually peak in the afternoon around 3-4pm.


