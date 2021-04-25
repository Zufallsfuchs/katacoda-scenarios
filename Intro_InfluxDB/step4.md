Both the UI and the CLI are used in this scenario, so first we'll set them up for interaction with the database.

To use the CLI, we must open a console inside of the docker instance we started earlier:

```
docker exec -it influxdb /bin/bash
```{{execute}}

Let’s start the initial database configuration:

```
influx setup \
  --org example-org \
  --bucket airSensors \
  --username admin \
  --password InfluxDB \
  --force \
  --skip-verify 
```{{execute}}

This command creates an admin user as well as a bucket called `airSensors`.

Now that the CLI is ready, switch to the tab ‘InfluxDB UI’ on the right and have a look at the UI. Refresh the site by pressing the button beside the tab name and use username `admin` and password `InfluxDB` to log-in.

Great, now we are all set to start working with InfluxDB using both the CLI and the UI!

[IN2]