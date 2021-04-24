As stated in the introduction, *InfluxDB* is a schemaless time series database. But what does that mean exactly? What’s the data model behind InfluxDB? Let’s take some time to define the key concepts needed for this scenario.

## Time Series

*Time series* are collections of sequential datapoints with timestamps indicating the time of recording said datapoint. They can be of *regular* or *irregular* nature. Regular time series occur if measurements are taken in set intervals. In the case of irregular time series, data recording is triggered by external events. [TSA]

Since relational databases usually don’t perform well with large time series, time series databases were developed. They usually are *schemaless*, meaning that they don’t need data to fit in pre-defined structures and that the structure of data can change from datapoint to datapoint. [ZEH]

Have a look at the following slide for a short summary and some example time series data:


![Slide about Time Series](./assets/TimeSeriesSlide.png)

[BUC]

## Data Modeling and Design