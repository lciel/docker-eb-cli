docker-eb-cli
=====

Sets up a container with ElasticBeanstalk CLI CommandLine Interface installed.

## Usage

```
$ docker run --rm lciel/eb-cli COMMAND
```

## Example

```
$ cd SOME_GIT_REPOSITORY

# Init EB Config
$ docker run --rm -i -t \
    -v $(pwd):/app \
    -w /app \
    -e AWS_CREDENTIAL_FILE=/app/AWS_CREDENTIAL \
    lciel/eb-cli \
    eb init

# Push to AWS
$ docker run --rm -i -t \
    -v $(pwd):/app \
    -w /app \
    -e AWS_CREDENTIAL_FILE=/app/AWS_CREDENTIAL \
    lciel/eb-cli \
    git aws.push
```

