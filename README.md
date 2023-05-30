# integrations-platform-offline-product-catalog

[![Build Status](https://gitlab.fftech.info/leonardo/badges/master/pipeline.svg)](https://build.fftech.info/job/integrations/job/platform/job/offline-product-catalog/job/declarative-build/job/master/)

{project-description}

## Documentation

[Confluence]({project-confluence-page})

## Contributing

[Contributing guidelines](CONTRIBUTING.md) for anyone who wants to contribute to the project.

## Installation

### Cloning the repository
```bash
git clone https://gitlab.fftech.info/leonardo.carvalho/offline-product-catalog
```

### Compiling / Installing dependencies / Running tests
```bash
mvn clean install
```

### Running the tests
The automated tests for this project are runned when compiling it. Tests can be runned separately: 

- using command line
```bash
mvn test
```

- using the class present on the folder `/src/test/com/farfetch/fflink/offline-product-catalog`

More details about the process can be found on [this page](https://farfetch.atlassian.net/wiki/spaces/INT/pages/1026113079/FFLink+-+Test+Platform).

### Building / Running service container and it's dependencies
```bash
docker compose up -d
```

Available service dependencies:

- [PostgreSQL](https://www.postgresql.org/) - Is an open-source relational database management system emphasizing extensibility and SQL compliance.

- [Redis](https://redis.io/) - Is an open source, in-memory data structure store, used as a database, cache, and message broker.

- [Zookeeper](https://zookeeper.apache.org/) - Is an open-source server for highly reliable distributed coordination of cloud applications.

- [Kafka](https://kafka.apache.org/) - Is a framework implementation of a software bus using stream-processing.

### Requirements

> - [Docker](https://www.docker.com/get-docker) >= 18.03.1-ce version
> - [Git](https://git-scm.com/downloads) >= 2.16.2 version
> - [Maven](https://maven.apache.org/download.cgi) >= 3.5.2 version
> - Windows | Linux

## Changelog

[Changelog](/changelog/CHANGELOG.md) for the relevant changes on the project.

## Support

[Confluence]({project-support-page})

### Contacts

- leonardo.carvalho@farfetch.com

Additional contacts can be found on the project [blueprint](https://gitlab.fftech.info/infrastructure/blueprints/blob/master/blueprints/integrations/platform/offline-product-catalog.yaml).