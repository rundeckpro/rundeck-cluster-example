# build RD enterprise if you want to use a snapshot

Inside rundeckpro/ src dir:

`./gradlew :docker:dockerBuild`

If you are on a branch it will also tag the image with the branch name, you can use that in the .env file below.

# Set env

in `.env` file:

```
RUNDECK_LICENSE_FILE=/path/to/my-rundeck-enterprise-license.key
# or change image below
RDIMG=rundeckpro/enterprise:SNAPSHOT
```

specify path to Rundeck Enterprise license key file, and specific rundeck version if not using SNAPSHOT.

# start

```
$ docker-compose up --build
```

Note: use `--build` to rebuild images, especially if you are use a snapshot/branch build otherwise it will re-use old images and you won't see your changes!!
