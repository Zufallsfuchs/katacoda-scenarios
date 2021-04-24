Now let’s get started working with the database. We’ll use both the UI and the CLI for interaction with the database.
To use the CLI, we must open a console inside of the docker instance we started earlier:

```
docker exec -it influxdb /bin/bash
```{{execute}}

Let’s start the initial database configutarion:

```
influx setup \
  --org example-org \
  --bucket airSensors \
  --username admin \
  --password InfluxDB \
  --force  
```{{execute}}

Now that the CLI is ready, let’s switch to the tab ‘InfluxDB UI’ on the right and have a look at the UI. As you can see, we could have also used the UI to setup the account. But now that we already have it set-up already, refresh the site by pressing the button beside the tab name and use username `admin` and password `InfluxDB` to log-in.

Great, now we are all set to start working with InfluxDB using both the CLI and the UI!

[IN2]