# Set env

in `.env` file:

```
RUNDECK_LICENSE_FILE=/path/to/my-rundeck-enterprise-license.key
#RDVERS=3.3.0-rc1-20200623
RDVERS=SNAPSHOT
```

specify path to Rundeck Enterprise license key file, and specific rundeck version if not using SNAPSHOT.

# start

```
$ docker-compose up 
```