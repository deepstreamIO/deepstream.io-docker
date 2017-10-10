Deepstream.io Docker Image
---

This is a standalone docker image for the deepstream.io server.
It can be used as a single instance or within a Deepstream cluster.

## Usage

Simple usage with default config:

```
docker run deepstreamio/deepstream.io:latest
```

Usage with mounted custom configuration files:

```
docker run -v $(pwd)/conf:/etc/deepstream deepstreamio/deepstream.io:latest
```

## Ports

The image exposes the following ports:

* `6020` - Websocket port
* `8080` - HTTP port

## Folder Locations

This are the locations for the deepstream configuration, log and plugin files.
You can mount them to folders on your host machine in order to apply custom
configurations, save log files or add more plugins.

* `/etc/deepstream` - Configuration files
* `/var/log/deepstream/` - Log files (via Winston Logger in default config)
* `/var/lib/deepstream` - Plugin files (defined in default config)

## Pre-Installed Plugins

* Winston Logger
* Postgres Storage
* ElasticSearch Storage
* MongoDB Storage
* RethinkDB Storage
* Redis Cache
* Hazelcast Cache
* Memcached Cache
