There are a lot of methods to interact with the InfluxDB server. Most notably you can use:

## HTTP API

InfluxDB instances offer a HTTP API for interaction. It can be used to write and query data as well as configuring aspects of the database like integrations. You can also use the API to interact with InfluxDB programmatically through client libraries for languages like Go, C#, Python or Java. It is accessible using the endpoint `/api/v2/`. [IN3]

## Web Interface

There is also a graphical user interface (UI) available by navigating a web browser to the IP and Port the instance is running on. It can be used to configure data sources, explore and visualize data as well as set up tasks and alerts. We’ll look at it later in this scenario. [IN2]

## Command Line

The last option we will talk about is the command line interface (CLI) called influx. Like the other options, it is used to manage aspects of InfluxDB as well as write and query data. This will be the main method we use to interact with the database. [In4]
