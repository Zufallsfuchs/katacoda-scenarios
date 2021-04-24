Lastly, we’ll have a look at how to query data using Flux, the InfluxDB native language for querying, analyzing, and acting on data. It uses pipe-forward operators `|>` to chain functions and operations. The most important function is `filter()` for filtering data.

The following query returns the temperature measurements between on the 1st of April between midnight and noon for the sensors *TLM0103* and *TLM0102*.

```
influx query "
from(bucket: "airSensors")
  |> range(start: 2021-04-01T00:00:00Z, stop: 2021-04-01T12:00:00Z)
  |> filter(fn: (r) => r["_measurement"] == "airSensors")
  |> filter(fn: (r) => r["_field"] == "temperature")
  |> filter(fn: (r) => r["sensor_id"] == "TLM0103" or r["sensor_id"] == "TLM0102")
  "
  ```{{execute}}

  