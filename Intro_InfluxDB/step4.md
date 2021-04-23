Now let’s get started working with the database. We’ll use both the UI and the CLI for interaction with the database.
To use the CLI, we must open a console inside of the docker instance we started earlier:

```
docker exec -it influxdb /bin/bash
```{{execute}}

Now start the initial setup process:

```
influx setup
```{{execute}}

Follow the instructions to setup your user account and primary bucket.
When prompted for a retention period, simply press ENTER to store data infinitely.

We could have also used the UI to setup the account. But now that we already have it set-up, let’s switch to the tab ‘InfluxDB UI’ on the right and use its credentials to log-in. Feel free to refresh the site by pressing the button beside the tab name if needed.

Great, now we are all set to start working with InfluxDB using both the CLI and the UI!


(see [IN1])