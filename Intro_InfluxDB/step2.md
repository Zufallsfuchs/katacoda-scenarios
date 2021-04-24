
While there are a lot of ways to install and use InfluxDB, we will concentrate on running it in a docker container. The corresponding image will be downloaded automatically in the background. Please wait for the download to finish before you continue. The terminal on the right will read the following when ready: 

```
$ echo "Ready to go!"
Ready to go!
```

Now that the download is complete, let's run an instance of the image:

```
docker run -d --name influxdb -p 8086:8086 influxdb:2.0.4
```{{execute}}

InfluxDB is now running as a server, listening to Port 8086 and ready for interactions trough connections.


[IN2]