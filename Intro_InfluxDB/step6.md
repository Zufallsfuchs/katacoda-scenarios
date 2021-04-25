Lastly, we’ll have a look at how to query data using Flux, the InfluxDB native language for querying, analyzing, and acting on data. It uses pipe-forward operators `|>` to chain functions and operations. The most important function is `filter()` for filtering data. While the function structure makes the query relatively easy to read, the language offers a broad range of features. Refer to the [official documentation](https://docs.influxdata.com/influxdb/v2.0/query-data/flux/) for more information.

The following query returns temperature measurements on the 1st of April between midnight and noon for the sensors *TLM0103* and *TLM0102*. It is executed using the CLI command `influx query`.

```
influx query '
from(bucket: "airSensors")
  |> range(start: 2021-04-01T00:00:00Z, stop: 2021-04-01T12:00:00Z)
  |> filter(fn: (r) => r._measurement == "airSensors")
  |> filter(fn: (r) => r._field == "temperature")
  |> filter(fn: (r) => r.sensor_id == "TLM0103" or r.sensor_id == "TLM0102")
  |> drop(columns: ["_start", "_stop"])
  '
  ```{{execute}}

As you can see, the results are presented as two tables.

In addition to running Flux queries, the UI offers a graphical query builder that doesn't require you to write any Flux. It also visualizes query results automatically.

Check it out by clicking Explore in the UI’s navigation menu. Make sure to set the time range to a time between March 24th and April 14th 2021 when trying it out, because that’s when there’s data available.

[IN6]