As stated in the introduction, *InfluxDB* is a schemaless time series database. But what does that mean exactly? It’s time for some basics!

## Time Series

*Time series* are collections of sequential datapoints with timestamps indicating the time of recording for said datapoint. They can be of *regular* or *irregular* nature: 
- **Regular**: measurements are taken in set intervals
- **Irregular**: data recording is triggered by external events. 

[TSA]

Since relational databases usually don’t perform well with large time series, time series databases were developed. They usually are *schemaless*, meaning that they don’t need data to fit in pre-defined structures and that the structure of data can change dynamically. [ZEH]

Have a look at the following slide for a short summary and some example time series data:

![Slide about Time Series](./assets/TimeSeriesSlide.png)

[BUC]

## Data Modeling and Design

InfluxDB stores data in so-called *buckets*. They are collections of datapoints with a set retention period. Each datapoint has at least a timestamp, a measurement and a field. Tags for metadata are optional. Let’s define these terms:

- **Timestamp**: Time of recording for a given datapoint.
- **Measurement**: Strings used to group datapoints that belong together.
- **Fields**: Key value pair; the Key is a string describing what’s being measured and the value is the value of the measurement.
- **Tags**: Key value pair; additional metadata for the measurements. The keys are strings and can be interpreted as columns, while the tag value contains the actual metadata.

In this example scientist at multiple locations count populations of bees and ants.
The *measurement* is called ‘census’ and is used for counting both types of insects. ‘location’ and ‘scientist’ are *tags*, offering more information about the datapoints. And finally, the *field key* ‘_field’ shows which insect is counted and the *field value* ‘_value’ is the population at any given time.

![Example Data 'census'](./assets/data.png)

[IN1]