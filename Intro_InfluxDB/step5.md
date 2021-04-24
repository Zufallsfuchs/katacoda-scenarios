In this step we’ll write time series data to the database using both the CLI and the UI. InfluxDB supports multiple file formats. For this example, we will be using Line Protocol (LP), a text-based format that contain one data point per line. The typical syntax of a LP data point looks like this:

```
measurementName,tagKey=tagValue fieldKey="fieldValue" 1465839830100400200
--------------- --------------- --------------------- -------------------
       |               |                  |                    |
  Measurement       Tag set           Field set            Timestamp
```
Note that the timestamp uses the UNIX timestamp format.

[IN5]

## Example Dataset

The dataset used in this example contains air sensor data. It consists of fields for temperature, humidity, and carbon monoxide for eight different sensors. Their names are saved as a tag and they report values every 30 minutes. The dataset was created using a [ruby script](https://github.com/influxdata/influxdb2-sample-data).
[IND]


## Write Data Using the CLI

Let's write the first eight datapoints of the dataset to the bucket `airSensors` using the `influx write` command:

```
influx write --bucket airSensors "
airSensors,sensor_id=TLM0201 temperature=73.211214349118,humidity=35.44560463897656,co=1.3338900071411675 1616575893
airSensors,sensor_id=TLM0202 temperature=74.58814788037166,humidity=34.90923094673878,co=0.7682133692653247 1616575893
airSensors,sensor_id=TLM0203 temperature=75.02759169234652,humidity=36.20736181112478,co=0.2226105613964045 1616575893
airSensors,sensor_id=TLM0100 temperature=72.94934331386506,humidity=34.761060703624864,co=0.6615477265453658 1616575893
airSensors,sensor_id=TLM0101 temperature=70.48460698314494,humidity=34.29700524323635,co=0.038997581270328284 1616575893
airSensors,sensor_id=TLM0102 temperature=69.6147570238503,humidity=35.49616255281883,co=0.4162151252758595 1616575893
airSensors,sensor_id=TLM0103 temperature=69.23583019634,humidity=35.44347610559955,co=1.057620996510558 1616575893
airSensors,sensor_id=TLM0200 temperature=71.30192809807144,humidity=34.554182420679666,co=34.8404886921331 1616575893
"
```{{execute}}

## Write Data Using the UI

<a href="./assets/airSensors.txt" download>Dataset</a>