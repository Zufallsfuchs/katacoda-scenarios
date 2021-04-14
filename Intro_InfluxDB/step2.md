
While there are a lot of ways to install and use InfluxDB, we will concentrate on running it in a docker container. The corresponding image will be downloaded automatically in the background. Please wait for the download to finish before you continue. The terminal on the right will read the following when ready: 

```
> Ready to go!
```

Now that the download is complete, let's run an instance of the image:

```
docker run -d --name influxdb -p 8086:8086 influxdb:2.0.4
```{{execute}}

Great, the container should now be up and running! But what do the options we used mean exactly?
- The `-d` flag means that we run the container in detached mode. This way it simply runs in the background. 
- The `--name` flag lets us give the container a name. *influxdb* in this case.
- The `-p` flag describes port mapping. Here we map port 8086 of the host to port 8086 of the container.